while( 1 -eq 1){ #Crea un bucle per recorrer el programa un alre cop en cas d'error en la ruta
    clear; $ruta = Read-Host -Prompt 'Introduce la ruta compelta' # demana la ruta per guardarla en  una variable
    cd \   # estableix la ubicació actual a la arrel
    cd $ruta -ErrorAction SilentlyContinue  #va a la ruta
    if($? -eq "true"){  #si la ruta existeix (no dona error la comanda anterior) busca l'arxiu
        $archivo = Read-Host -Prompt "Introduce el archivo desdeado"  #demana l'arxiu a buscar
        $resultado = Get-Item -path $ruta"\"$archivo -ErrorAction SilentlyContinue #busca l'arxiu
        $resultado
        if($resultado -eq $null){   # si la variable esta vacia no es troba l'arxiu
        "No se ha encotrado el archivo"  
        }
        break
    }
    else{

    "Ruta no encotrada."
    "Introduzca la ruta completa."
    sleep 2  #espera 2 segons per poder veure el misatje anterior

    }
}
