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

Los arreglos en C son estructuras de datos que permiten almacenar varios valores del mismo tipo en posiciones contiguas de memoria. Cada elemento se accede mediante un índice, el cual comienza en 0.

En C, los arreglos son fundamentales para trabajar con colecciones de datos y están estrechamente relacionados con el uso de punteros y memoria.

### Características principales

* Tienen un tamaño fijo definido al declararse
* Almacenan datos del mismo tipo
* Se accede a los elementos mediante índices
* El nombre del arreglo representa la dirección del primer elemento
* Se recorren comúnmente usando ciclos for

### Arreglos unidimensionales

Un arreglo unidimensional almacena datos en una sola dimensión, similar a una lista.

### Arreglos bidimensionales

Un arreglo bidimensional organiza los datos en filas y columnas, similar a una matriz.


Manejo de matrices
----

# Principales Dificultades en la Aplicación de los Contenidos ⚠️🧩

Durante el desarrollo de la unidad se presentaron varias dificultades relacionadas con la comprensión y aplicación de la modularidad y el uso de arreglos en el lenguaje C. Entre las más importantes se encuentran:

1. **Comprender cómo dividir el programa en funciones (modularidad)**
Al inicio fue complicado identificar qué partes del programa debían convertirse en funciones y cuáles debían permanecer en el programa principal. Organizar el código de forma modular sin perder la lógica general del programa representó un reto importante.

2. **Uso correcto del paso de parámetros por valor y por referencia**
Diferenciar cuándo utilizar paso por valor o por referencia generó confusión, especialmente al notar que algunos cambios realizados dentro de una función no se reflejaban fuera de ella. Comprender el uso de punteros fue clave para superar esta dificultad.

3. **Manejo de arreglos y control de índices**
Trabajar con arreglos resultó complejo debido a errores frecuentes en los índices, como acceder a posiciones fuera del rango permitido. Esto ocasionó fallos en el programa y dificultó la obtención de los resultados esperados.

4. **Organización del código para mayor claridad y reutilización**
Lograr que el código sea claro, ordenado y reutilizable no fue sencillo al inicio. Aprender a estructurar bien las funciones y a nombrarlas correctamente ayudó a mejorar la comprensión del programa.

Estas dificultades, aunque representaron un desafío inicial, permitieron fortalecer el razonamiento lógico y mejorar la forma de programar, logrando soluciones más organizadas y eficientes.

----

# Reflexión Crítica de los Aprendizajes de la Unidad 🧠📘✨

Durante toda esta unidad desarrollé habilidades fundamentales relacionadas con la modularidad y el uso de arreglos en el lenguaje C, lo que permitió comprender cómo organizar un programa de manera más clara y eficiente. Estos contenidos ayudaron a entender la importancia de dividir un problema grande en partes más pequeñas, facilitando la lectura, el mantenimiento y la corrección del código. Aunque al inicio resultaron complejos, fueron esenciales para fortalecer el pensamiento lógico y la estructuración de soluciones.

Uno de los aprendizajes más significativos fue comprender cómo funcionan las funciones y el paso de parámetros por valor y por referencia, ya que esto permitió manejar mejor los datos dentro de un programa. También se aprendió que los arreglos son una herramienta clave para almacenar y procesar varios datos de forma ordenada. La experiencia demostró que un programa bien modularizado es más fácil de entender y mejorar. En general, estos aprendizajes aportaron una base sólida para enfrentar problemas de programación más complejos en el futuro.

----

# Tareas Entregadas 📚📎

* 📄 [APE 1](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/tree/main/Unidad%203)
* 📄 [APE 2]
*  📄 [APE 3]

* 📄 [AA 1]

----
