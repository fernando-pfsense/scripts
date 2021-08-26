for /f "delims=" %%n in ('whoami') do set tempname=%%n
set username=%tempname:*\=%
net use u: /delete
net use u: "\\localhost\c$\Users\%username%\Erie Custom Fab\Erie Custom Fab - Documents" /PERSISTENT:yes
powershell -command "$a = New-Object -ComObject shell.application; $a.NameSpace( 'U:\' ).self.name = 'ECF'"