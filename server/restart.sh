#!/bin/bash
echo "🔄 Сервер перезапускается..."
# Ожидаем полной остановки сервера
sleep 5
# Запускаем новую сессию с сервером
cd /home/runner/work/$(basename $(pwd))/$(basename $(pwd))/server
nohup java -Xmx1024M -Xms1024M -jar paper.jar nogui >> server.log 2>&1 &
echo "✅ Сервер перезапущен!"
