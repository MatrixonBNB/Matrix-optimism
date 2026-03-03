FROM ethereum/client-go:v1.17.1

RUN apk add --no-cache jq bash

COPY l1-geth-entrypoint.sh /entrypoint.sh

VOLUME ["/db"]

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
