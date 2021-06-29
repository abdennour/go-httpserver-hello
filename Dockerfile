FROM golang:1.16.5-alpine
COPY . /code

CMD [ "go", "run", "/code/src/app.go" ]