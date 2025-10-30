# 🧠 Unidad 1

---

### 📚 Temas:
- **Algoritmos, pseudocódigo.**
- **Diagramas de flujo.**
- **Programación por bloques.**
- **Ejemplos de algoritmos con estructuras lineales/secuenciales.**
- **Principales dificultades en la aplicación de los contenidos.**
- **Reflexión crítica de los aprendizajes de la unidad.**

----

# ⚙️ Algoritmos, Pseudocódigo
Los **algoritmos** son una secuencia de pasos a seguir, ordenados y finitos, que pueden solucionar un problema determinado y se presentan no solamente ante problemas matemáticos complejos, sino también ante problemas cotidianos [1].  

Por ejemplo, una persona quiere salir de su casa, por lo que debe seguir estos pasos:  

1️⃣ Dirigirse a la puerta.  
2️⃣ Si está cerrada, entonces gira la manija, jala la puerta y sale del cuarto.  
3️⃣ Si está abierta, sale del cuarto sin problemas.  
4️⃣ Jalar la puerta para cerrarla.  

Estos nos ayudan bastante en la **resolución de problemas** planteados desde el mundo real hacia la computación, lo que permite crear códigos en un determinado lenguaje para que así podamos **aprender, visualizar, razonar y comprender la raíz de un problema** y llegar a una solución.  

El **pseudocódigo** es una serie de instrucciones escritas bajo cierta estructura y reglas que inducen al alumno a adecuarse y facilitar el paso hacia los lenguajes de programación [1].  
Permite al usuario manejar el español y una herramienta de programación al mismo tiempo, favoreciendo un aprendizaje fácil para adentrarse en los lenguajes reales de programación.  
Un ejemplo de pseudocódigo es **PSeInt**, además de que es fácil de usar, editar y comprender qué hace cada comando escrito en el código.  

Por ejemplo, alguien quiere sumar dos números enteros:

```psc
Algoritmo suma_dos_numeros

//Definir Variables

Definir num1, num2, resultado como Entero;

//Datos de entrada

Leer num1;

Leer num2;

//Proceso

resultado = num1 + num2;

//Salida

Escribir resultado;

FinAlgoritmo
```

Primero, damos incio a nuestro codigo marcando su inicio con *Algoritmo* y *definimos las variables* del problema que son **num1** para el primer numero, **num2** para el segundo número, y **resultado** para la respuesta, y como los numeros van a ser enteros, los definimos como enteros; en los *datos de entrada* pedimos al usuario que ingrese valores de num1 y num2, ésta funcion se llama **Leer**; para el proceso, sumamos el num1 más el num2 y nos tiene que salir como respuesta el **resultado**;  la *salida*, que imrpimimos (Escribir) en la pantalla el resultado, y finalmente cerramos el algoritmo con *FinAlgoritmo*. Para realizar pruebas de escritorio, le damos click en el boton ejecutar y si esta todo bien, nos debe ejecutar sin problemas.

*🔗 🖼️ [Ejecución del Programa](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad1/Prueba_de_Escritorio.png)

----

# 🔄 Diagrama de flujo

Es un intento de expresar ideas gráficamente a través del texto. A menudo proporciona una visión gráfica de la descripción del algoritmo en el diagrama de flujo. Se trata de un conjunto de herramientas gráficas con una simbología estándar que pueden representar los diferentes algoritmos de acción del algoritmo [2]. Una herramienta de diagrama de flujo es PSeInt, que aparte de usarse en Pseudocódigo, se usa para representar graficamente los algoritmos realizados en esta herramienta.

Vamos a tomar como referencia al ejemplo anteríor, el algoritmo de la suma de dos números representados en un diagrama de flujo:

*🔗 🖼️ [Diagrama de Flujo](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad1/Diagrama_de_Flujo.png)

Como pudimos observar en la imagen, se ve los pasos del anterior algoritmos de una manera más comoda y persuasiva. Esta herramienta nos puede ayuda para planificar programas o algoritmos antes de codificarlos , para detectar errores lógicos antes de escribir código, o para documentar procesos o sistemas.

----

#  🧩 Programación por bloques

La programación por bloques es una forma de crear programas sencillos. Un programa se erige con solo arrastrar y colocar los segmentos de bloques en el orden correcto para un determinado propósito, además, se tiene por ventaja que el programa escrito se encuentra sin errores de sintaxis que son recurrentes en otros lenguajes de programacións [3]. 
Existen varias herramientas como Sratch o Blocky Games, que ayudan al aprendizaje de estructurar algoritmos ordenados, ya sea para que un personalle llegue al lugar del destino, o para crear una historia o un cuento.

A continuación, presentaremos imagenes de la página de Blocky Games, y veremos como funciona:

1)🎵 [Blocky Game](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad1/programación_por_bloques1.png)
En la primera imagen, tenemos una serie de notas musicales y un cuadro que nos dice *when play button clicked* que es la acción de darle click al botón.

2) 🧱 [Estructura del Bloque](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad1/programación_por_bloques2.png)
En la segunda imagen, se presenta el bloque realizado, en cada cuadro dentro del bloque *when play button clicked*, y como hay 4 notas musicales agregamos 4 bloques más pequeños que van a seguir las ordenes que le demos.

3) 💻 [Resultado en JavaScript](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad1/programación_por_bloques3.png)
En la utlima imagen, se presenta el codigo ya resuelto en **JavaScript** si lo hicimos correctamente podremos avanzar al siguente nivel.

En resumen, la programación por bloques facilita el aprendizaje de la lógica y la secuencia de instrucciones, es muy usado en educación y enseñanza básica de programación y permite crear programas rápidamente sin errores de escritura, además de que algunos entornos permiten ver el código real que generan los bloques, como es el caso de BlockyGames con **JavaScript**.

----

# 📈 Ejemplos de algoritmos con estructuras lineales/secuenciales

Para realizar una estructura de algoritmos completamente organizadas, hay que tratar de separar el codigo por partes, para poder resolverlo en su totalidad de una manera sencilla, dando así un resultado completamente de una manera optima.

Hoy en día existen una serie de problemas cotidianos que surgen de la necesidad de resolvelos evitando dar tantas vueltas y tratar de buscar una solución de una manera sencilla y ordenada, como se presentan en los siguentes ejemplos:

## 💰 Problemas Cotidianos

1. Una persona quiere saber cuanto va a gastar en una cierta cantidad de producto y quiere saber cuánto debe pagar incluyendo el IVA.
2. Una persona quiere saber cuántos galones de gasolina usa su auto en un viaje y cuánto gastará en total.

### Ejemplo 1

##### PSeInt

Primero, damos inicio a nuestro código marcando su inicio con **Algoritmo** y *definimos las variables del problema*, que son **precio, cantidad, subtotal, IVA, valorIva y total**; todas serán de tipo real, ya que pueden tener decimales.
En los datos de entrada, pedimos al usuario que ingrese el precio del producto (precio) y la los productos que desea adquirir (cantidad), esta función se llama *Leer*.
En el proceso, designamos el valor del *IVA*  del 15% (0,15) y multiplicamos el *precio × cantidad* para obtener el *subtotal*,  el *valorIva* (valor del IVA) lo sacamos multiplicando el *subtotal * IVA* y finalmente sumamos ambos valores para obtener el *total = subtotal + iva*.
En la salida, imprimimos (Escribir) en la pantalla el subtotal, el iva y el total a pagar.
Finalmente, cerramos el algoritmo con FinAlgoritmo.
Para realizar la prueba de escritorio, damos clic en el botón **Ejecutar** y si está todo correcto, el programa mostrará el total con IVA incluido sin errores.

##### Lenguaje C

Primero, damos inicio a nuestro programa incluyendo la librería #include <stdio.h> que nos permite usar funciones como printf y scanf para mostrar y leer datos.
Luego, dentro de la función principal main(), declaramos las variables del problema, que son precio, cantidad, subtotal, iva, valorIva y total; todas de tipo float, ya que pueden tener decimales.

En los datos de entrada, pedimos al usuario que ingrese el precio del producto (precio) y la cantidad de productos que desea adquirir (cantidad), esto lo hacemos con la función scanf.

En el proceso, asignamos el valor del iva = 0.15, y multiplicamos precio × cantidad para obtener el subtotal.
Luego, calculamos el valorIva = subtotal × iva, y finalmente el total = subtotal + valorIva.

En la salida, mostramos con la función printf el subtotal, el iva y el total a pagar.

Finalmente, cerramos nuestro programa con return 0; que indica que el programa terminó correctamente.

Para realizar la prueba de escritorio, compilamos y ejecutamos el programa. Si todo está correcto, el resultado mostrará el total con el IVA incluido sin errores.

* 📄 [Pseudocódigo (PSeInt)](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad1/Calculo_gasto_de_productos.psc)
* 💻 [Lenguaje de programación (C)](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad1/Calculo_gastos_productos.c)

### Ejemplo 2

* 📄 [Pseudocódigo (PSeInt)](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad1/costo_por_galones.psc)
* 💻 [Lenguaje de programación (C)]([https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad1/costo_por_galones.c)

----

# ⚠️ Principales dificultades en la aplicación de los contenidos.

El desarrollo de aprendizaje en cada uno de estos bloques no es tarea facil, por lo que hubo ciertos temas que en sus inicios fueron dificiles de entender.

### 💾 Uso de Github

Esta herramienta presentó nuevas maneras de subir un codigo por "repositorios" lo que complicó un poco entender en sus inicios el manejo de Github, comprendía cierto nivel de conocimientos previos para poder hacer un uso excelente de esta herramienta.

### 💻 Programación en C

El nivel de dificultad que implicó el manejo correcto de esta herramienta es amplio, pero no tan difícil, ya que en algunos casos se necesita aprender ciertos símbolos característicos del lenguaje de programación que son de uso obligatorio, como incluir librerías (#include), iniciar la estructura de un algoritmo (int main() { }), o permitir la lectura de variables (scanf).

----

# 💬 Reflexión crítica de los aprendizajes de la unidad.

En toda la unidad, abarcamos varios temas que fueron de gran utilidad como con los Algoritmos, que siguen una serie de pasos ordenados y finitos; el pseudocódigo que permitió introducir a la programación combinando un Lenguaje de Programación y el Español; los diagramas de flujo que permite ver los algoritmos elaborados de una manera más creativa y una manera más facil de corregir errores en el codigo; la programación por bloques que permite aplicar la lógica sin complicaciones técnicas.

Estas herramientas fortalecieron ls capacidad para analizar, planificar y desarrollar soluciones estructuradas, comprendiendo mejor el vínculo entre el razonamiento humano y el lenguaje de la computadora. Gracias a estos aprendizajes, estoy preparado para avanzar más hacia los lenguajes de programación que requieran más nivel de dificultad.

----

# 🗂️ Tareas entregadas

* [Herramientas de algoritmos (pseudocódigo y diagramas de flujo)](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad1/Valencia_Jose_Tarea_ProgramaciónN1.pdf)
* [Instalación de lenguajes de programación (C, Python o Java)](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad1/Valencia_Jose_TareaProgramación_N2.pdf)
* [Primer acercamiento a la construcción de algoritmos con estructuras secuenciales en pseudocódigoTarea](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad1/VALENCIA_CONDOY_JOSE_DAVID_PL1.pdf)
* [Del diseño del algoritmo con estructuras secuenciales a la construcción del programa](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad1/VALENCIA_CONDOY_JOSE_DAVID_PL2.pdf)
----




































