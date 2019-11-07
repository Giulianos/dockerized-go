# Dockerized Go

This document serves as a written record of what I did and learnt.

## Steps I followed

The steps I followed to dockerize the example app (including mistakes) are:

1. Wrote the app
2. Compiled the app with `go build main.go`
3. Created the Dockerfile for the image
4. Built the image
5. Tried running the image -> realized it won't run as the binary was for macOS
6. Cross-compiled the app with `go build main.go` but setting the **GOOS** and **GOARCH** env. variables (More in here: [Optional environment variables](https://golang.org/doc/install/source#environment))
7. Rebuilt the image
8. Tried running the image -> **now it worked!**
9. Created the Makefile to automate build and dockerization.
