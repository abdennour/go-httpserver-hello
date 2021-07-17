FROM golang:1.16.5-alpine as build
WORKDIR /code
COPY . /code
RUN go build src/app.go
# generate "app"

FROM alpine:3.14 as runtime
COPY --from=build /code/app .
CMD ["./app"]
#   FROM base-builder  as build
#   COPY . .
#   RUN <build-compile-package>
#  ......

# FROM base-runtime  as runtime
# COPY --from=build /code/artifact /path
# ENTRYPOINT /path/app