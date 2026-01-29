# 🧠 Unidad 3

---

### 📚 Temas:
* **Modularidad**
* **Arreglos**
* **Principales dificultades en la aplicación de los contenidos**
* **Reflexión crítica de los aprendizajes de la unidad**
* **Tareas entregadas**

----

# Modularidad ⚙️🤖

La **modularidad** es una técnica que conciste en dividir un problema o un algoritmo grande de un sistema en partes más pequeñas e independientes llamadad módulos. En vez de hacerlo todo unido y desordenado, esta se organiza por partes.

En el lenguaje C lo implementamos creando funciones, rutinas, etc, que permitan desmenusar el código de una manera sencilla y atractiva, haciendo que el codigo sea más entendible y funcional.

### Funciones 🟢

Una función es el conjunto de sentencias que realiza una tarea determinada. Un ejemplo de una función es la función `printf();` de la librería `#include <stdio.h>` la cual sirve estrictamente para salida de datos.

#### **Ejemplo con pase de parámetros por valor**

Inicializamos con un problema de una suma de numeros enteros, y necesitamos devolver un tipo de dato entero sin cambiar los números dentro de la función *main* , para ello creamos dos variables de tipo entero, "a" y "b", y a estas variables les asignamos un valor de 5 y 7 respectivamente.

Al momento en que nosotros modificamos un valor fuera de la funcion main solo usando parámetros por valor, la variable mantiene el valor que le habiamos dado en el principio, en el caso de "a" seguiria siendo 5 aunque se modifique en otra función.

* 💻️ **Código:**

```c
#include <stdio.h>

void sumar(int a, int b) {
    a += b;
    int total = a + b;
    printf("a: %d, b: %d, Total: %d\n", a, b, total);
}

int main(void){
    int a, b;
    a = 5;
    b = 7;
    sumar(a, b);
    printf("a = %d, b = %d", a, b);
    return 0;
}
```
Si sumamos el nuevo valor de "a" dentro de la funcion **sumar** este solo afecta dentro de dicha función, ejecutandolo sería:

<img width="246" height="44" alt="image" src="https://github.com/user-attachments/assets/0e109cec-1634-4ede-bb1b-348c79f95662" />

Como podemos observar, primero se ejecuta la funcion que guarda "a" como 12, pero este valor no afecta después al momento de imprimirlo dentro de la función main, pero, ¿cómo podemos resolver esto?

#### Ejemplo con pase de parámetros por referencia

Inicializamos otro problema, ahora una resta de dos numeros enteros, la cual va a tener las mismas variables dentro de la función main, "a" y "b", las cuales tienen los valores de 5 y 2 respectivamente.

En esta estructura, indicarémos por referencia desde que llamamos a la función "restar". Escribimos **&** para referenciar dentro del main y utilizamos un puntero " * " el cual sirve de ayuda para apuntar a la dirección de la variable que está dentro del main.

* 💻️ **Código:**

```c
#include <stdio.h>

void restar(int *a, int *b) {
    *a -= *b;
    int total = *a - *b;
    printf("a: %d, b: %d, Total: %d\n", *a, *b, total);
}

int main(void){
    int a, b;
    a = 5;
    b = 2;
    restar(&a, &b);
    printf("a = %d, b = %d", a, b);
    return 0;
}
```

Como podemos observar,  escribimos de manera diferente el código, y esto afecta a las variables "a" y "b" para que tomen otros valores aunque estén en otra función.

<img width="218" height="44" alt="image" src="https://github.com/user-attachments/assets/e035f24f-9bd3-44b0-b626-8c6e48b5c910" />

En esta imagen, se observa la salida del código por la terminal, y "a" ya no vale lo mismo, porque inicializamos en 5, pero esa variable toma el valor de 3 debido al paso de parámetros por referencia.

----

# Arreglos 🔁

Las **estructuras condicionales repetitivas** son aquellas que permiten ejecutar un conjunto de instrucciones varias veces, ya sea mientras se cumpla una condición o durante un número determinado de iteraciones. Son fundamentales cuando se necesita procesar listas de datos, repetir cálculos o automatizar tareas dentro de un algoritmo.

### Estructuras Repetitivas While 🔄⏳

Es un conjunto de sentencias dentro del while se ejecuta mientras la expresión booleana que controla el ciclo while es verdadera [4].

En esta estructura, la condición *while*  lee la condición, si esta condición es verdadera pasa al bloque de instrucciones en esta sentencia; una vez hecho este bloque nuevamente evalúa la condición y así sucesivamente hasta que la condición sea falsa para salir del bucle.

* **Problema:** Pedir al usuario un número y seguir solicitando otro mientras el número ingresado sea *negativo*.

* 📄 [Diagrama de Flujo](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad%202/diagrama_4.png)

* 💻️ **Código:**

```c
#include <stdio.h>

int main(void) {

   int num;

   scanf("%d", &num);

   while (num >= 0) {
      printf("Numero ingresado: %d\n", num);
      scanf("%d", &num);
   }

   printf("Fin del programa.\n");
   
   return 0;
}
```
### Estructuras Repetitivas Do While 🔁✨

Tiene una forma diferente al momento de ejecutarse, es importante indicar que en la estructura do-while realiza un conjunto de instrucciones y después se evalúa la condición, esto quiere decir que si la condición resulta ser falsa el conjunto de instrucciones se ejecutará al menos una vez [4].

Esta estructura comienza con un *do* y el bloque de instrucciones, después se ubica un while seguido de la condición a evaluar, si la condición es verdadera, se repite el bloque de instrucciones dentro del do y así sucesivamente, y si es falsa termina el bucle y continúa con el programa.

* **Problema:** Crear un programa que pida al usuario una contraseña (número). El programa debe seguir pidiendo la contraseña hasta que el usuario ingrese el valor correcto.  

* 📄 [Diagrama de Flujo](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad%202/diagrama_5.png)

* 💻️ **Código:**

```c
#include <stdio.h>

int main(void) {

   int pasword;
   int intento;

   pasword = 1234;    // Contraseña correcta

   do {
       printf("Ingrese la contrasena de 4 digitos: ");
       scanf("%d", &intento);

       if (intento != pasword) {
           printf("Contrasena incorrecta. Intente de nuevo.\n");
       }

   } while (intento != pasword);

   printf("Bienvenido! Ha ingresado la contrasena correcta.\n");

   return 0;
}
```

### Estructuras Repetitivas For 🎯🧮

El bucle `for` se utiliza mejor para bucles controlados por contadores, donde un conjunto de declaraciones se ejecuta una vez para cada valor en un rango específico [4].

Para esta estructura iniciamos el bucle con un *for*, y tiene que tener tres expresiones, en la primera expresión damos el valor del contador, en la seguna expresión se ubica la condición y en la tercera expresión se incrementa o decrementa el contador; despues ponemos el bloque de instrucciones que debemos evaluar.

* **Problema:** Solicitar un número entero positivo y mostrar todos los números desde *1 hasta ese número*.

* 📄 [Diagrama de Flujo](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad%202/diagrama_6.png)

* 💻️ **Código:**

```c
#include <stdio.h>

int main(void) {

   int i;
   int num;

   printf("Ingrese un numero entero positivo: ");
   scanf("%d", &num);
   getchar();

   for (i = 1; i <= num; i++) {
      printf("%d\n", i);
   }

   return 0;

}
```

----

# Ejercicio Combinado Estructura Condicional y Repetitiva 🤝🧠

El siguiente ejercicio lo realizaremos en el lenguaje Python.

### Descripción del Problema 📝

Crear un programa en Python que solicite al usuario ingresar varios números enteros. El programa debe seguir pidiendo números mientras el usuario no ingrese un 0, ya que este servirá como condición de salida. Durante el proceso, el programa debe sumar únicamente los números positivos. Si el usuario ingresa un número negativo, se mostrará un mensaje indicando que dicho número no será sumado. Al finalizar, el programa debe mostrar la suma total de todos los números positivos ingresados.

### Diagrama de Flujo Simplificado 🔄📈

* 📄 [Diagrama de Flujo](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad%202/diagrama_de_flujo_py.png)

### Programa 💻️

```python
suma = 0
num = None

while num != 0:
    num = int(input("Ingrese un valor entero: "))

    if num > 0:
        suma += num
    elif num < 0:
        print("El numero es negativo, no será incrementado")


print("La suma total es: ", suma)
```

### Verificación 🐍⚙

* 📄 [Ejecución del Programa](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad%202/Terminal.png)

----

# Principales Dificultades en la Aplicación de los Contenidos ⚠️🧩

Durante el desarrollo de la unidad se presentaron varias dificultades relacionadas con la comprensión y aplicación de las estructuras condicionales y repetitivas. Entre las más importantes se encuentran:

1. **Comprender la lógica detrás de las condiciones múltiples**  
   Resultó complicado diferenciar cuándo era más apropiado utilizar `if–else` o un `switch–case`, especialmente en situaciones donde existían varias opciones posibles.

2. **Controlar adecuadamente las condiciones de salida en los bucles**
   En las estructuras repetitivas, como `while` y `do–while`, una de las principales dificultades fue identificar correctamente la condición que determina cuándo el ciclo debe detenerse, evitando bucles infinitos.

3. **Distinguir cuándo usar cada tipo de bucle**  
   Seleccionar entre `for`, `while` o `do–while` fue un reto, ya que cada uno se adapta mejor a distintos escenarios. Comprender estas diferencias fue esencial para resolver los ejercicios correctamente.

4. **Validación de datos ingresados por el usuario**  
   En varios ejercicios se exigía verificar si los valores ingresados eran válidos (por ejemplo, evitar valores negativos o fuera de rango). Incorporar estas validaciones dentro de las estructuras condicionales generó dificultades iniciales.

5. **Traducción de un algoritmo a código en distintos lenguajes**  
   Pasar un mismo ejercicio a lenguajes como C o Python implicó adaptarse a diferentes sintaxis y formas de estructurar las instrucciones, lo cual requirió práctica adicional.

Estas dificultades, aunque fueron algo complicadas de enfrentar, permitieron fortalecer el razonamiento lógico y mejorar la capacidad para diseñar soluciones más claras y eficientes.

----

# Reflexión Crítica de los Aprendizajes de la Unidad 🧠📘✨

A lo largo de esta unidad se lograron desarrollar habilidades fundamentales para la construcción de algoritmos y programas básicos con estructuras **condicionales** y **repetitivas** que permitió comprender cómo los programas toman decisiones y cómo se pueden automatizar tareas mediante ciclos. Estos contenidos, aunque al inicio resultaron complejos, fueron esenciales para fortalecer el pensamiento lógico y la capacidad de resolver problemas de forma estructurada.

Uno de los aprendizajes más significativos fue entender la importancia de elegir adecuadamente la estructura de control según la necesidad del problema. La experiencia demostró que no siempre la primera solución es la más eficiente y que es necesario analizar el programa antes de implementarlo. Además, el uso de diferentes lenguajes como C y Python facilitó reconocer que, aunque la sintaxis cambia, la lógica detrás de los algoritmos es la misma.

----

# Tareas Entregadas 📚📎

* 📄 [APE 1: Aplicación de estructuras condicionales en la resolución de problemas](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad%202/Estructuras_Condicionales_APE1_U2_JoséValencia.pdf)
* 📄 [APE 2: Aplicación de estructuras repetitivas en la resolución de problemas](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad%202/Estructuras_Repetitivas_APE2_U2_JoséValencia.pdf)

* 📄 [AA 1: Diferencias entre los tipos de estructuras condicionales](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad%202/Tipos_Estructuras_Condicionales_U2_AA_JoséValencia.pdf)
* 📄 [AA 2: Cuadro comparativo entre las estructuras repetitivas](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad%202/Estructuras_Repetitivas_AA2_U2_JoseValencia.pdf)

----
