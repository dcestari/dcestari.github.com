---
title: ¿Cómo funciona "la web"?
layout: post
---

Este post intenta explicar, de manera simple, cómo funciona una página web (o "la web" en general).

Asumiré que el lector está poco o nada familiarizado con los conceptos de redes de computadoras. Sin embargo, si trabajas en el área, esta guía puede servir para educar a tus clientes y hacer más efectiva la comunicación al establecer una nomenclatura común.

### El Navegador Web

Lo más importante para que una persona pueda "navegar" en internet es, valga la redundancia, un "navegador web" (hablando, claro, del promedio).

El navegador web es un programa de computadora, como *Microsoft Excel*, *Skype*, o cualquier otro que usemos a diario.

Existen muchos *navegadores web*:

- **Internet Explorer** por muchos años el más popular ya que viene pre-instalado con *Microsoft Windows*.
- **Mozilla Firefox** o también conocido por algunos como **Mozilla** (por su muy antiguo nombre). Muy popular también, descendiente del antiguo *Netscape Navigator*.
- **Google Chrome** relativamente nuevo pero con una gran popularidad gracias a la confianza que muchos le tienen a su creador: *Google*.
- **Safari** el navegador web pre-instalado con todas las computadoras Mac de Apple.

### URL

Una vez abrimos nuestro "navegador web" o, simplemente, "navegador" lo siguiente que solemos hacer es escribir una dirección para visitar.

Esta dirección se conoce como *URL* (e.g. http://google.com) y le permite al navegador encontrar la página que queremos ver.

Tomemos como ejemplo el *URL* **http://twitter.com/blog** para analizar las partes más importantes:

- **Protocol** va al inicio, generalmente será **http** o **https**, en este ejemplo es `http`.

- **Dominio** luego del protocolo y el separador **://** encontraremos el dominio, en este ejemplo es `twitter.com`.

> **NOTA** El dominio **www.twitter.com** es un *subdominio* de **twitter.com**, el colocar **www** fue una convención que se aplicó originalmente para saber que era la dirección de la página web (*world wide web*) de **twitter.com**.

- **Ruta** inmediatamente luego del dominio encontramos la ruta, esto ayuda al servidor web (más adelante definido) a saber exactamente qué parte de la página queremos (e.g. la sección de noticias), en este ejemplo es `/blog`.

Hay otras partes que conforman un *URL* pero escapan del alcance de esta guía.

### Servidor Web

Para entender lo que es un servidor web primero debemos pensar en internet como un conjunto de computadoras conectadas. Computadoras como la que usas para leer un documento o visitar esta página web.

Cuando una computadora está conectada a internet, cualquiera que sea, tiene una dirección (en algunos casos, varias) que permite identificarla.

Los servidores son computadoras generalmente dedicadas a proveer servicios (de ahí el nombre). Un "servidor web" es un programa de computadora especialmente diseñado para comunicarse con los "navegadores web".

Así que, un "servidor web" es también un programa de computadora, como lo son: **iTunes**, **Bloc de Notas** o **Paint**.

### Página web

Aunque parezca simple, una página web no es más que un conjunto de archivos que el "navegador web" puede leer.

Así como muchos otros programas, el navegador web sabe **interpretar** y **dibujar** en nuestra pantalla archivos con ciertos formatos. Esto es similar a como *Microsoft PowerPoint* puede dibujar una presentación contenida en un archivo **PPT**.

El "navegador web" se comunica con el "servidor web" para descargar una página web y dibujarla en la pantalla. Este esquema se conoce en computación como "arquitectura cliente-servidor" donde el **cliente** es el "navegador web" y el **servidor** es el "servidor web".

Cuando simplificamos un poco, "navegar en internet" es realmente transferir archivos entre el "servidor web" y el "navegador web".

Algunos de los formatos de archivo que podemos encontrar en una página web son:

- **HTML** es la estructura básica de una página web, contiene básicamente todo el texto de la página e información adicional sobre la estructura. También es donde se referencian todos los demás archivos de una página web.

- **CSS** contiene información sobre "cómo se ve" una página web (e.g. colores).

- **JavaScript** contiene código que es ejecutado por el "navegador web" para hacer desde cosas simples como esconder una porción de la página, hasta mucho más complejas como dibujar imágenes 3D animadas.

- **Imágenes** prácticamente cualquier formato que nuestra computadora pueda abrir, generalmente serán **JPEG**, **PNG** o **GIF** (este último es un formato generalmente animado).

### DNS

Para decirle a un "navegador web" que se conecte a un "servidor web" y descargue una "página web" debemos usar la **dirección** de la computadora donde se encuentra el segundo.

Las direcciones en internet son números como **199.16.156.230** (uno de los **IP** de **twitter.com**) usándolo, el navegador puede conectarse directamente con el servidor de **twitter** y descargar la página web para que la podamos leer.

Pero aprenderse la dirección de todas las páginas que querramos visitar sería poco práctico, y mucho menos dictarla a alguien. Es mucho más fácil decir "entra en http://twitter.com" que "entra a http://199.16.156.230".

Para resolver este problema se creó un programa que presta un servicio conocido como **DNS** (*domain name system/server*) que traduce un **dominio** (e.g. twitter.com) en una dirección de internet (e.g. 199.16.156.230).

Así que, cuando escribimos una dirección en el "navegador web" (e.g. http://twitter.com/blog):

- El navegador se comunica con el "servidor DNS" para traducir `twitter.com` en `199.16.156.230`.

- Luego se conecta con el "servidor web" que está en la dirección de internet `199.16.156.230`.

- Finalmente, se descarga los archivos que corresponden a la "página web" que está en la ruta `/blog` y los dibuja en la pantalla.

### Conclusión

1. Una **página web** es simplemente un conjunto de archivos en ciertos formatos específicos.

2. El **navegador web** sabe descargar y dibujar una página web a partir de una *URL*.

3. El **servidor DNS** traduce el dominio en la dirección del servidor web.

4. El **servidor web** envía los archivos de la página al navegador.

Con esta información, podrás entender a grandes razgos ¿cómo funciona la web?.

Más adelante, en un siguiente post y basado en estos conceptos, explicaré cuáles son los servicios que se deben contratar para tener una página web.
