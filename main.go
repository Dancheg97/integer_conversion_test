package main

import (
	"context"
	"fmt"
	"log"
	"net"

	pb "testo/api"

	"google.golang.org/grpc"
)

type server struct {
	pb.ServicerServer
}

func main() {
	fmt.Println("Server has started! port: 8080 open")
	lis, err := net.Listen("tcp", ":8080")
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}
	serv := grpc.NewServer()
	pb.RegisterServicerServer(serv, &server{})
	if err := serv.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}

func (s *server) TestIt(ctx context.Context, in *pb.Inp) (*pb.Inp, error) {
	fmt.Println(in.First)
	fmt.Println(in.Second)
	return &pb.Inp{}, nil
}
