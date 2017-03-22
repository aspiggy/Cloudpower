function test($ip,$user,$pw,$cmd) { 
    Set-Item WSMan:\localhost\Client\TrustedHosts -Value * -Force  // Add all hosts or a single host into the cred list
    $Password = ConvertTo-SecureString $pw -AsPlainText –Force
    $cred = New-Object System.Management.Automation.PSCredential($user,$Password) //create a remote credential
    invoke-command -ComputerName $ip -Credential $cred -ScriptBlock { $cmd }  //incove the cmd
}
