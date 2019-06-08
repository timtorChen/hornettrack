location /static {
    alias /staticfile/hornettrack;
}