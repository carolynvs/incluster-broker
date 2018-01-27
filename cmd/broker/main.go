package main

import (
	"github.com/carolynvs/incluster-broker/broker"
	"github.com/carolynvs/incluster-broker/server"
)

func main() {
	inclusterBroker := broker.InClusterBroker{}
	server.Run(inclusterBroker)
}
