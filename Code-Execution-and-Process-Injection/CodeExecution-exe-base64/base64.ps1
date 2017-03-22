$PEBytes = [System.IO.File]::ReadAllBytes("C:\test\test.exe")

$Base64Payload = [System.Convert]::ToBase64String($PEBytes)
Set-Content test.b64 -Value $Base64Payload
