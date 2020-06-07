$host.ui.RawUI.WindowTitle = "Anti Netclass v20200607 Alpha | Developed by zeroday0619"
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) 
{ 
  Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit 
}
stop-service NC8*
Write-Output "Completed!"
pause
