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
{'Ok',<0.97.0>,"/122"}
> import Control.Behaviour.Supervisor.Impl
> which_children :n2o
[{{caching,"/122"},<0.97.0>,worker,[n2o]},
 {{caching,"/timer"},<0.93.0>,worker,[n2o]}]
```

