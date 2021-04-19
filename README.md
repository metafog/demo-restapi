# Planetr Demo: demo-restapi
Run a Microservice REST API 

## Docker usage on local machine 

```
docker run -p 9001:8080 -d planetrio/demo-restapi
```
Visit http://localhost:9001/tomjerry and you will see a response ```Hello tomjerry```

## Deploy and run the same docker image on Planetr decentralized cloud

[Install and run](https://planetr.io/getstarted.html) the Planetr gateway node

Create and run a decentralized compute unit (DCU) on Planetr network

```
$ planetr dcu-run -p 9002:8080 planetrio/demo-restapi g.micro
INSTANCE ID STATUS TYPE IMAGE NAME PORTS CREATED AT
c1tb1mf2hraqacl2oung Pending g.micro planetrio/demo-restapi 9002:8080 2021-04-17T15:26:41.891416+05:30
```

Please wait for the status to become 'Running'

```
$ planetr dcu-ps
INSTANCE ID STATUS TYPE IMAGE NAME PORTS CREATED AT
c1tb1mf2hraqacl2oung Running g.micro planetrio/demo-restapi 9002:8080 2021-04-17T15:26:41.891416+05:30
```

```planetrio/demo-restapi``` image has a REST API which echo the name passed with a ```Hello```

Now visit https://localhost:9002/iron-man in a browser to see ```Hello iron-man!```
Now visit https://localhost:9002/John in a browser to see ```Hello John!```


Delete the DCU.
```
$ planetr dcu-rm c1tb1mf2hraqacl2oung
INSTANCE ID STATUS TYPE IMAGE NAME PORTS CREATED AT
c1tafjn2hraq06kud0bg Deleting g.micro planetrio/demo-restapi 9002:3000 2021-04-17T14:48:06.568676+05:30
```

Check status again.

```
$ planetr dcu-ps
INSTANCE ID STATUS TYPE IMAGE NAME PORTS CREATED AT
```

## Docker Build (If in case)

```
GOOS=linux GOARCH=386 go build ./server.go
docker build -t demo-restapi .
```
