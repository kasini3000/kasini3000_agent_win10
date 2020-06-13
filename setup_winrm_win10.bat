echo "管理员权限运行"
C:\windows\System32\WindowsPowerShell\v1.0\powershell.exe  -ExecutionPolicy bypass -command "Enable-PSRemoting -SkipNetworkProfileCheck -Force"

C:\windows\System32\WindowsPowerShell\v1.0\powershell.exe  -ExecutionPolicy bypass -command "Set-NetFirewallRule -Name "WINRM-HTTP-In-TCP-NoScope" -RemoteAddress Any"

C:\windows\System32\WindowsPowerShell\v1.0\powershell.exe  -ExecutionPolicy bypass -command "Set-NetFirewallRule -Name "WINRM-HTTP-In-TCP" -RemoteAddress Any"

C:\windows\System32\WindowsPowerShell\v1.0\powershell.exe  -ExecutionPolicy bypass -command "restart-service -Name WinRM -Force"