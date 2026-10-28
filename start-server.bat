@echo off
cd /d "%~dp0"
echo Starting Gasnola's Jewellers LAN server on port 8080...
echo Open on this PC:    http://localhost:8080/site/index.html
echo Open on phone (same Wi-Fi): http://192.168.0.121:8080/site/index.html
echo Press Ctrl+C to stop.
python -m http.server 8080 --bind 0.0.0.0
pause