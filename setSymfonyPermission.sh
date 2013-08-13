#/bin/bash
CACHE="app/cache"
LOGS="app/logs"

if [ ! -d "$CACHE" ]; then
	mkdir -p "$CACHE"
fi

if [ ! -d "$LOGS" ]; then
	mkdir "$LOGS"
fi

APACHEUSER=`ps aux | grep -E '[a]pache|[h]ttpd' | grep -v root | head -1 | cut -d\  -f1`;
sudo chmod +a "$APACHEUSER allow delete,write,append,file_inherit,directory_inherit" app/cache app/logs;
sudo chmod +a "`whoami` allow delete,write,append,file_inherit,directory_inherit" app/cache app/logs;
