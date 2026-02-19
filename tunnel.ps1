# Cloudflare Tunnel 安装脚本 (Windows)
# 以管理员身份运行PowerShell

# 1. 下载cloudflared
Write-Host "下载Cloudflare Tunnel..." -ForegroundColor Yellow
$url = "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-windows-amd64.exe"
$out = "$env:TEMP\cloudflared.exe"
Invoke-WebRequest -Uri $url -OutFile $out

# 2. 安装Tunnel
Write-Host "安装Tunnel..." -ForegroundColor Yellow
& $out tunnel --url http://127.0.0.1:18789

Write-Host "安装完成！" -ForegroundColor Green
Write-Host "Tunnel URL会在控制台显示" -ForegroundColor Cyan
