---
layout: post
---

Estas instrucciones est&aacute;n escritas para ser usadas en Mac OS X o Linux, aunque cualquier derivado de Unix deber&iacute;a servir.

Para subir los archivos al servidor se debe usar el comando `scp`. Este comando recibe dos argumentos, el archivo de origen y el archivo destino. S&oacute;lo uno de estos archivos puede ser una referencia a un archivo remoto.

El comando `scp` es usado para hacer una copia de un archivo local a otro remoto (subir un archivo) o para hacer una copia local de un archivo remoto (bajar un archivo).

Este comando viene incluido con las herramientas de l&iacute;nea de comando de Mac OS X y la mayor&iacute;a de derivados de Unix.

### Ejemplos 1:  Subir el archivo "prueba.txt" al servidor "mi.servidor.com" con el usuario "daniel":

    scp prueba.txt daniel@mi.servidor.com:

Esto creara una copia del archivo local *"prueba.txt"* en la ruta *"/home/daniel/prueba.txt"* del servidor *"mi.servidor.com"*.

&gt; **NOTA:** Es importante nunca olvidar los ":" (dos puntos) al final del comando ya que, de hacerlo, el comando scp crear&iacute;a una copia local del archivo local "prueba.txt" con nombre "daniel@mi.servidor.com".

### Ejemplo 2: Bajar el archivo remoto ubicado en la ruta "/home/daniel/pruebas/archivo_de_prueba.txt" en el servidor "mi.otro.servidor.com" con el usuario "daniel":

    scp daniel@mi.otro.servidor.com:pruebas/archivo_de_prueba.txt .

Esto crea una copia local del archivo remoto ubicado en *"/home/daniel/pruebas/archivo_de_prueba.txt"* en el directorio desde donde ejecute el comando, con el nombre *"archivo_de_prueba.txt"*.
