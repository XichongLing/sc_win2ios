# sc_win2ios
- Run monitor_ps in PowerShell ISE, type a name for new folder at the prompt of "build a transfer folder on Desktop", which will leave a folder on your desktop.

- add sharing properties to the new folder
  - Right click folder and click on "Properties"
  - In sharing tab, click on "Share" button, then add "Everyone" to share with, choosing favored permits.

- get connection details from pc
  - In cmd, run command "ipconfig", record your IPv4 address and user profile (name after "C:\Users\").

- Set connection in IOS
  - In Files, click "..." icon under browse tab, choose "Connect to Server"
  - Enter server name in such form : smb://, followed by IPv4 address mentioned above, click on Connect.
  - On the prompted page, Enter yor profile as User Name, the password should be that of your microsoft account.
