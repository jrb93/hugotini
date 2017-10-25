FROM jrb93/golangtini:1.9 as builder
ENV CGO_ENABLED=0
RUN go get -v github.com/gohugoio/hugo

FROM scratch
LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.name="hugotini" \
      org.label-schema.version="1.0.0" \
      org.label-schema.vcs-url="https://github.com/jrb93/hugotini"
COPY --from=builder /go/bin/hugo .
EXPOSE 1313
ENTRYPOINT [ "./hugo" ]