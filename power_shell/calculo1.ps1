$base = Read-Host "Ingrese valor: "
$altura = Read-Host "Ingrese altura: "

$area = [double]$base * [double]$altura
$perimetro = $area / 2
Write-Host "Area = $area"
Write-Host "Perimetro = $perimetro"