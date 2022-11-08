while( 1 -eq 1){ #Crea un bucle per recorrer el programa un alre cop en cas d'error en la ruta
clear; $ruta = Read-Host -Prompt 'Introdueix la ruta del arxiu a copiar'  #demana la ruta per guardarla en  una variable
$copia = Read-Host -Prompt 'Introdueix la ruta on es guardara la copia'   #demana la ruta on copiar l'arxiu i la guarda en una variable
Copy-Item $ruta -Destination $copia -ErrorAction SilentlyContinue  #copia l'arxiu a la ruta especificada 
if($? -eq "true"){   # si s'ha realitzat la copia satisfactoriament trenca el bucle
"S'ha realitzat la copia satisfactoriament"
break
}
else{
"La ruta del fitxer o del desti no existeix"
sleep 2  #espera 2 segons per poder veure el misatje anterior
}
}