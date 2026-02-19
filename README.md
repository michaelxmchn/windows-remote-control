# Windows远程控制

通过GitHub一键部署，實現远程SSH控制Windows电脑。

## 功能
- SSH远程连接
- CMD命令执行
- 浏览器控制
- 文件传输

## 一键部署
```powershell
# 在Windows PowerShell中运行：
irm https://raw.githubusercontent.com/michaelxmchn/windows-remote-control/main/install.ps1 | iex
```

## 配置
部署后需要配置：
1. OpenSSH for Windows
2. Git环境
