.PHONY: gen gen-go runtest

gen: gen-go

# gen-go:
# 	protoc  --proto_path=proto \
# 		--go_out=plugins=grpc:paxoskv \
# 		--go_opt=paths=source_relative \
# 		paxoskv.proto

gen-go:
	protoc --proto_path=proto \
		--go_out=./paxoskv --go_opt=paths=source_relative \
    	--go-grpc_out=./paxoskv --go-grpc_opt=paths=source_relative \
    	paxoskv.proto		


test:
	cd ./paxoskv && go test