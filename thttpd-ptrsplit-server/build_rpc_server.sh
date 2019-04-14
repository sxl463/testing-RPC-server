#!/bin/sh

echo "build rpc server\n"

gcc -std=gnu99 -I/usr/local/include -DNDEBUG authcheck.c authcheck_xdr.c authcheck_svc.c -o rpc_server -lcrypt

echo "building complete!"
