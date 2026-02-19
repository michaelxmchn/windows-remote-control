# 复制到PowerShell运行
Write-Host "检查SSH服务..."
$ssh = Get-Service -Name sshd -ErrorAction SilentlyContinue
if ($ssh) {
    Write-Host "SSH已安装"
} else {
    Write-Host "请手动安装OpenSSH: 设置 -> 应用 -> 可选功能 -> 添加OpenSSH服务器"
}
Write-Host "确保22端口开放"
