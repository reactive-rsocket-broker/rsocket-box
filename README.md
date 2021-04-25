rsocket-box
===========

A lightweight container with RSocket and Alibaba RSocket Broker utilities.

* rsc CLI: https://github.com/making/rsc
* Alibaba RSocket Broker Ops & Service testing
* just command runner: https://github.com/casey/just
* Bash completions

# Commands

* just brokers: list brokers\
* alirsc: call services registered on the broker

```
alirsc tcp://rsocket-broker.rsocket.svc.cluster.local:9999 --request --route com.alibaba.user.UserService.findById -d '[1]'
```
