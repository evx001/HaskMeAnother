GHCi, version 7.8.2: http://www.haskell.org/ghc/  :? for help
Loading package ghc-prim ... linking ... done.
Loading package integer-gmp ... linking ... done.
Loading package base ... linking ... done.
Prelude> let fn001 n = n + n
Prelude> let fn002 x = x + x
Prelude> fn001 == fn002
<interactive>:4:7:
    No instance for (Eq (a0 -> a0)) arising from a use of ‘==’
    In the expression: fn001 == fn002
    In an equation for ‘it’: it = fn001 == fn002
Prelude> fn001 n == fn002 x
    bind :: (c -> (c, a)) -> (a -> c -> (c, b)) -> c -> (c, b)
    bind x f = \c -> let (c', y) = (x c) in (f y) c'

get :: State c c
get = \c -> (c, c)

put :: a -> State a ()
put x = \c -> (x, ())

runState :: State c a -> c -> (c, a)
runState :: (c -> (c, a)) -> c -> (c, a)


int init_driver(...) {
    /* 500 lines of code */
    message("Init done!");
    return 0;
}

void message(String fmt, ...) {
    char buf[512];

    memset(buf, 512, '\0');
    snprintf(buf, 512, fmt, ...);
    /* snprintf may have truncated our message, make sure it's nul-terminated */
    buf[511] = '\0';
    log(buf);
}


