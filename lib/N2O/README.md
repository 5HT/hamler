N2O/Hamler
==========

Technically N2O front face is a set of services:

* encode terms with ETF encoding
* pickling messages with GCM
* session and cache backend framework services
* registry services such as SYN or global
* its own process instance (PI) supervision through ETS tables

N2O
---

```
pickle :: Binary -> Binary
depickle :: Binary -> Binary
encode :: forall k. k -> Binary
decode :: forall k. Binary -> IO k
reg :: forall k. k -> IO k
unreg :: forall k. k -> IO k
send :: forall k v z. k -> v -> IO z
getSession :: forall k v. k -> IO v
putSession :: forall k v. k -> v -> IO v
getCache :: forall k v. Atom -> k -> IO v
putCache :: forall k v. Atom -> k -> v -> IO v
```

N2O.PI
------

```
data PI = PI String Atom Atom Atom Integer RestartType
data Sup = Ok Pid String | Error String

startPi :: PI -> IO Sup
```

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
[{{caching,"/12"},<0.97.0>,worker,[n2o]},
 {{caching,"/timer"},<0.93.0>,worker,[n2o]}]
```

