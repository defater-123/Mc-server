#!/bin/bash
echo "🔄 Сервер перезапускается..."
sleep 5
cd server
nohup java -Xmx4G -Xms2G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -jar paper.jar nogui >> server.log 2>&1 &
echo $! > server.pid
echo "✅ Сервер перезапущен!"
