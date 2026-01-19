$edad = Read-Host "Edad"
if ([int]$edad -ge 18){
    Write-Host "Permitido"
}else{
    Write-Host "Denegado"
}