---
layout: post
---

Some languages make it dead simple to get a **timestamp** or **UNIX time** as a single integer:

The `time()` function exists on many languages, others present a _Date_ object and even on
the shell is really easy to get it `date +%s`.

Is not that hard in **Haskell** either, it's just ... different.

First, we need to remember that getting the current time is an _IO_ operation, therefore we'll be
working on the _IO Monad_.

From the _time_ package we can get a _POSIXTime_ and then use _floor_ to get an _Integral_:

    import Data.Time.Clock.POSIX
    
    main :: IO ()
    main = print . floor =&lt;&lt; getPOSIXTime

Which will print a nice integer as would `perl -e 'print time'` (not as short but
**it get's the job done**)
