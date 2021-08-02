# sc_win2ios
A tiny tool to automatically send screenshots from windows to ios when watching lectures on your laptop and taking notes on other devices.
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

The program assumes your screenshots folder is located in default path. If you have ever moved it, refer to register key under HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders\{B7BEDE81-DF94-4682-A7D8-57A52620B86F}, the value being your working screenshots directory, edit in your favor.

To disable folder monitor, use command "get-eventsubscriber -force | unregister-event -force" in console, after which your screenshots will no longer be forwarded to transfer folder. To disconnect, simply delete the sharing folder on your ios device.
