-- A monad transformer adding reading an environment of one type, collecting an output of another type and updating a state of third type to an inner monad. 
-- six language extensions, and one option  
-- eight imports 
--  
{-# OPTIONS_GHC -Wall -Werror #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}
import Control.Monad.RWS.Class
import Control.Monad.Reader
import Control.Monad.Base
import Control.Applicative (Applicative)
import Data.IORef.Lifted
import Data.Monoid (Monoid, (<>), mempty)
import Control.Exception.Lifted
import Control.Monad.Trans.Control

data Env r w s = Env
    { envReader :: !r
    , envWriter :: !(IORef w)
    , envState  :: !(IORef s)
    }

newtype RWST r w s m a = RWST (ReaderT (Env r w s) m a)
    deriving (Functor, Applicative, Monad, MonadIO, MonadTrans)

instance Monad m => MonadReader r (RWST r w s m) where
    ask = RWST $ liftM envReader ask
    local f (RWST g) =
        RWST $ local f' g
      where
        f' env = env { envReader = f $ envReader env }

instance (MonadBase IO m, Monoid w) => MonadWriter w (RWST r w s m) where
    tell w = RWST $ ask >>= flip modifyIORef (<> w) . envWriter
    listen (RWST (ReaderT f)) = RWST $ ReaderT $ \env -> do
        iwriter <- newIORef mempty
        result <- f env { envWriter = iwriter }
        w <- readIORef iwriter
        return (result, w)
    pass (RWST (ReaderT f)) = RWST $ ReaderT $ \env -> do
        (result, g) <- f env
        modifyIORef (envWriter env) g
        return result

instance MonadBase IO m => MonadState s (RWST r w s m) where
    get = RWST $ ask >>= readIORef . envState
    put s = RWST $ ask >>= flip writeIORef s . envState

instance (MonadBase IO m, Monoid w) => MonadRWS r w s (RWST r w s m)

runRWST :: (MonadBase IO m, Monoid w) => RWST r w s m a -> r -> s -> m (a, s, w)
runRWST (RWST (ReaderT f)) r s = do
    iwriter <- newIORef mempty
    istate <- newIORef s
    a <- f $ Env r iwriter istate
    w <- readIORef iwriter
    s' <- readIORef istate
    return (a, s', w)

instance MonadBase b m => MonadBase b (RWST r w s m) where
    liftBase = lift . liftBase

instance MonadTransControl (RWST r w s) where
    newtype StT (RWST r w s) a = StRWS {unStRWS :: a}
    liftWith f = RWST $ ReaderT $ \r -> f $ \(RWST t) -> liftM StRWS $ runReaderT t r
    restoreT = RWST . ReaderT . const . liftM unStRWS

instance MonadBaseControl b m => MonadBaseControl b (RWST r w s m) where
    newtype StM (RWST r w s m) a = ST { unST :: ComposeSt (RWST r w s) m a }
    liftBaseWith = defaultLiftBaseWith ST
    restoreM     = defaultRestoreM unST

main :: IO ()
main = do
    res <- try $ runRWST
        (step1 `finally` step2)
        "This is the environment"
        0
    print (res :: Either ErrorCall ((), Int, [Bool]))
  where
    step1 = do
        liftIO $ putStrLn $ "In step1"
        modify (+ 1)
        error "User exception"
    step2 = do
        s <- get
        liftIO $ putStrLn $ "In step2: " ++ show s
