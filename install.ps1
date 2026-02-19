# Windows远程控制一键安装脚本
# 以管理员身份运行PowerShell

Write-Host "开始安装..." -ForegroundColor Green

# 1. 检查并安装OpenSSH
$sshService = Get-Service -Name sshd -ErrorAction SilentlyContinue
if (-not $sshService) {
    Write-Host "正在安装OpenSSH..." -ForegroundColor Yellow
    Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
}

# 2. 启动SSH服务
Start-Service sshd
Set-Service -Name sshd -StartupType Automatic

# 3. 配置防火墙
New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH Server' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22

# 4. 创建OpenClaw工作目录
New-Item -ItemType Directory -Force -Path C:\openclaw

Write-Host "安装完成！" -ForegroundColor Green
Write-Host "请确保Windows防火墙允许SSH连接" -ForegroundColor Yellow
