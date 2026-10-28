# LAN Access — Gasnola's Jewellers Showcase

## Your home-network URL
Primary LAN IP: **192.168.0.121**
Site URL (same Wi-Fi): **http://192.168.0.121:8080/site/index.html**
Kanban URL: **http://192.168.0.121:8080/kanban.html**

> Note: If your router assigns a different IP later, run `ipconfig` and use the IPv4 address of your Wi-Fi/Ethernet adapter.

## How to start the server (Windows)
1. Double-click `start-server.bat` in `D:\AI_Lab\`, OR run in PowerShell:
   ```powershell
   cd "D:\AI_Lab"
   python -m http.server 8080 --bind 0.0.0.0
   ```
2. Keep the window open while people view it.
3. Stop with Ctrl+C.

## Firewall (one-time)
Windows may block port 8080. If phones can't connect, allow it:
```powershell
New-NetFirewallRule -DisplayName "Gasnola LAN 8080" -Direction Inbound -Protocol TCP -LocalPort 8080 -Action Allow
```

## Home-network only?
`--bind 0.0.0.0` listens on all interfaces including Wi-Fi, so anyone on the same router can open the link. It is NOT reachable from the internet (unless you port-forward on your router — don't). To restrict strictly to localhost only, use `--bind 127.0.0.1` (then only this PC can view).

## WhatsApp message you can send (same Wi-Fi required)
Copy/paste this:

---
Hi! 👋 Check out Gasnola's Jewellers — handcrafted gold & silver, repairs, manufacturing and ready-made pieces by Salaam Gasnola (49 years at the bench).

View our showcase here (connect to our Wi-Fi / same network first):
http://192.168.0.121:8080/site/index.html

WhatsApp us to order or for a custom piece: +27 81 042 6334
Call: 078 279 5726
Facebook: https://www.facebook.com/profile.php?id=100063741120418
---

## If recipients are NOT on your Wi-Fi
A local IP won't open for them. Options:
- Share screenshots/PDF instead (use browser "Print to PDF" on the site).
- Temporarily expose via a tunnel: `npx localtunnel --port 8080` (gives a public URL; stop when done).
- Host free on GitHub Pages / Netlify for a permanent public link.
