function test($ip,$user,$pw) { 
    Set-Item WSMan:\localhost\Client\TrustedHosts -Value * -Force 
    $Password = ConvertTo-SecureString $pw -AsPlainText –Force
    $cred = New-Object System.Management.Automation.PSCredential($user,$Password)
    Enter-PSSession -ComputerName $ip -Credential $cred
}
