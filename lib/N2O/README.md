N2O/Hamler
==========

Technically N2O front face is a set of services:

* encode terms with ETF encoding
* pickling messages with GCM
* session and cache backend framework services
* registry services such as SYN or global
* its own process instance (PI) supervision through ETS tables

Usage
-----

```haskell
> import Control.Application
> ensureAllStarted :n2o
[compiler,elixir,crypto,n2o]
> import N2O.PI
> startPi (PI "/12" :"caching" :"n2o" :"n2o" 500 Transient)
```

