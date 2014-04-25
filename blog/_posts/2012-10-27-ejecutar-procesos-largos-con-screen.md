---
layout: post
---

Estas instrucciones est&aacute;n escritas para ser usadas en Mac OS X o Linux, aunque cualquier derivado de Unix deber&iacute;a servir.

Cuando ejecutamos un comando en alg&uacute;n terminal el tiempo de vida est&aacute; determinado por la sesi&oacute;n que iniciamos. Al momento que la sesi&oacute;n termina porque cerramos el terminal (en caso de una sesi&oacute;n local) o nos desconectamos de un servidor (en caso de una sesi&oacute;n remota), los procesos que hayamos ejecutado se detendr&aacute;n.

Existe una utilidad conocida como `screen` que nos permite abrir una especie de "sesi&oacute;n virtual" que tiene tiempo de vida indeterminado. Esta sesi&oacute;n s&oacute;lo termina si se lo solicitamos de manera expl&iacute;cita.

Para iniciar una "sesi&oacute;n virtual" debemos ejecutar el comando `screen` indic&aacute;ndole un nombre para la sesi&oacute;n:

    screen -S misesionvirtual

Esto nos abrir&aacute; una sesi&oacute;n como si acab&aacute;ramos de abrir un nuevo terminal en la que los comandos que ejecutemos vivir&aacute;n "por siempre" hasta cerrar la sesi&oacute;n.

Si queremos salirnos del `screen` sin cerrar la sesi&oacute;n debemos darle a *"Ctrl+A D"*, esto es, darle a *"Ctrl"* y la letra *"A"* a la vez, luego soltar ambas teclas y darle a la tecla *"D"*.

Si queremos entrar de nuevo a un `screen` que ya creamos anteriormente debemos saber su nombre. Para saber las sesiones que tenemos creadas podemos ejecutar el comando:

    screen -list

Esto nos dar&aacute; una lista de las sesiones creadas y el estado de cada una. Luego, podemos "re-entrar" a una sesi&oacute;n con el comando:

    screen -r misesionvirtual

Hay casos en los que cerramos el terminal o nos desconectamos de internet sin haber salido correctamente de un `screen` y la sesi&oacute;n queda "abierta". En estos casos el comando *"screen -r nombredesesion"* no funcionar&aacute;, tendremos que usar el comando:

    screen -x misesionvirtual

Este comando nos sirve tambi&eacute;n para compartir una sesi&oacute;n abierta por otro terminal.

### Ejemplo 1: Ejecutar un proceso dentro de un screen:

    screen -S misesionvirtual
    ruby mi_ciclo_infinito.rb

*(Ctrl+A D)*

### Ejemplo 2: Entrar a un screen y finalizar un proceso en ejecuci&oacute;n:

    screen -r misesionvirtual

*(Ctrl+C)*
