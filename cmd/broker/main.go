package main

import (
	"github.com/carolynvs/incluster-broker/broker"
	"github.com/carolynvs/incluster-broker/server"
	"fmt"
)

func main() {
	fmt.Println("Hi, I'm an in-cluster broker!")
	inclusterBroker := broker.InClusterBroker{}
	server.Run(inclusterBroker)
}
