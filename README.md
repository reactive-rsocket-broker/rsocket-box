rsocket-box
===========

A lightweight container with RSocket and Alibaba RSocket Broker utilities.

* rsc CLI: https://github.com/making/rsc
* Alibaba RSocket Broker Ops & Service testing
* just command runner: https://github.com/casey/just
* Bash completions

# How to run rsocket-box in Kubernetes?

```
kubectl run -i --rm --tty rsocket-box --image=linuxchina/rsocket-box --restart=Never
```

# Commands

* just brokers: list brokers
* alirsc: call services registered on the broker
* List brokers:

```
alirsc tcp://rsocket-broker.rsocket.svc.cluster.local:9999 --request --route com.alibaba.rsocket.discovery.DiscoveryService.getInstances -d '["*"]'
```

* Call UserService

```
alirsc tcp://rsocket-broker.rsocket.svc.cluster.local:9999 --request --route com.alibaba.user.UserService.findById -d '[1]'
```
