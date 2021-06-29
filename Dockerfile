FROM golang:1.16.5-alpine
COPY . /code
CMD [ "go", "run", "src/app.go" ]