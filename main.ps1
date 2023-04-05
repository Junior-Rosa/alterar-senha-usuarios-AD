$users = Get-ADUser -Filter * -SearchBase “OU=EmpresaX,DC=empresa,DC=local”

foreach($user in $users){
Set-ADUser -Identity $user -CannotChangePassword:$false -PasswordNeverExpires:$false -ChangePasswordAtLogon:$true
}