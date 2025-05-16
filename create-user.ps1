$config = Get-Content .\config.json | ConvertFrom-Json
$user = $config.user

net user $user.username $user.password /add
if ($user.isAdmin) {
    net localgroup Administrators $user.username /add
}
