#Politica actual
$politica = Get-ExecutionPolicy
Write-Host "████████████████████████████" -BackgroundColor Red
Write-Host "Politica Actual : $politica"

Switch($politica){
    "Restricted"{
        $mensaje = "Nivel Máximo"
        $color = "White"
    }
    "RemoteSigned"{
        $mensaje = "Nivel Recomendado"
        $color = "Green"
    }
    "Allsigned"{
        $mensaje = "Nivel Corporativo"
        $color = "Cyan"
    }
    "Unrestricted" {
        $mensaje = "Nivel Bajo"
        $color = "Yellow"
    }
    "Bypass"{
        $mensaje = "Sin Restricciones"
        $color = "Red"
    }
}
Write-Host "Estado: $mensaje" -BackgroundColor $color