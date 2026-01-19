$num = Read-Host "Numero: "
for ($i=1;$i -le 10;$i++){
    $res = [int]$num * $i
    Write-Host "$num x $i = $res"
}