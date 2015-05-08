---
layout: post
---

Estas instrucciones est&aacute;n escritas para ser usadas en Mac OS X o Linux, aunque cualquier derivado de Unix deber&iacute;a servir.

En Mac OS X y la mayor&iacute;a de derivados de Unix, podemos encontrar una aplicaci&oacute;n que se conoce como *"Terminal"* o *"Emulador de Terminal"* (tambi&eacute;n se les suele dar el nombre de *"consola"*). Esta aplicaci&oacute;n nos permite acceder a la l&iacute;nea de comandos donde podemos usar herramientas muy &uacute;tiles.

Una de las herramientas que encontraremos ser&aacute; `ssh` (`Secure Shell`) que nos permite establecer conexiones a terminales remotas. Al entrar a un servidor a trav&eacute;s de `ssh` tenemos acceso a las mismas herramientas que tendr&iacute;amos si abri&eacute;ramos la aplicaci&oacute;n "Terminal" en aquella m&aacute;quina.

Para entrar al servidor *"mi.servidor.com"* con el usuario *"daniel"* usando `ssh` debemos ejecutar:

    ssh daniel@mi.servidor.com

Esto iniciar&aacute; una sesi&oacute;n remota en el servidor que podemos cerrar ejecutando el comando:

    exit

Un atajo para cerrar una sesi&oacute;n es *"enviar"* al shell el car&aacute;cter `EOF` (`End Of File`), es equivalente a escribir *"exit"*. Esto lo podemos hacer presionando *"Ctrl+D"*, esto es presionar la tecla *"Ctrl"* al mismo tiempo que la letra *"D"*.

### Ejemplo 1: Iniciar una sesi&oacute;n remota en un servidor usando ssh y cerrarla:

    ssh daniel@mi.servidor.com
    exit

### Ejemplo 2: Ejecutar un comando en un terminal remoto usando ssh:

    ssh daniel@mi.servidor.com hostname

&gt; **NOTA:** Esto es una forma de ejecutar un &uacute;nico comando en un servidor y cerrar la sesi&oacute;n una vez su ejecuci&oacute;n termine.
