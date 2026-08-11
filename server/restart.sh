#!/bin/bash
echo "🔄 Сервер перезапускается..."
sleep 5
cd server
nohup java -Xmx1024M -Xms1024M -jar paper.jar nogui >> server.log 2>&1 &
echo $! > server.pid
echo "✅ Сервер перезапущен!"
