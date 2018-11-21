
echo "==========================="
echo " ShadowSocks Server is up:"
echo " "$(shadowsocks-server -version)
echo " port    : $SS_SERVER_PORT"
echo " password: $SS_PASSWORD"
echo " method  : $SS_METHOD"
echo " timeout : $SS_TIMEOUT"
echo "==========================="

shadowsocks-server -p $SS_SERVER_PORT -k $SS_PASSWORD -m $SS_METHOD -t $SS_TIMEOUT
