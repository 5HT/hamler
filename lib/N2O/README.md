N2O/Hamler
==========

Technically N2O front face is a set of services:

* 1) encode term with ETF encoding
* 2) pickling messages with GCM
* 3) session and cache backend framework services
* 3) registry services such as SYN or global
* 4) its own process instance (PI) supervision through ETS tables

Usage
-----

```haskell
> import Control.Application
> ensureAllStarted :n2o
[compiler,elixir,crypto,n2o]
> import N2O.PI
> startPi (PI "/12" :"caching" :"n2o" :"n2o" 500 Transient)
```

