
echo "==========================="
echo " ShadowSocks Server is up:"
echo " port    : $SERVER_PORT"
echo " password: $PASSWORD"
echo " method  : $METHOD"
echo " timeout : $TIMEOUT"
echo "==========================="

#shadowsocks-server -p $SS_SERVER_PORT -k $SS_PASSWORD -m $SS_METHOD -t $SS_TIMEOUT

ss-server \
      -s $SERVER_ADDR \
      -s $SERVER_ADDR_IPV6 \
      -p $SERVER_PORT \
      -k ${PASSWORD} \
      -m $METHOD \
      -t $TIMEOUT \
      --fast-open \
      -d $DNS_ADDRS \
      -u \
      $ARGS
