# 🧠 Unidad 2

---

### 📚 Temas:
* **Estructuras condicionales**
* **Estructuras repetitivas**
* **Ejercicio combinando estructura condicional y repetitiva**
    * Descripción del problema
    * Diagrama de flujo simplificado
    * Programa
    * Verificación
* **Principales dificultades en la aplicación de los contenidos**
* **Reflexión crítica de los aprendizajes de la unidad**
* **Tareas entregadas**

----

# Estructuras Condicionales ⚙️🤖

Las **estructuras condicionales**  permiten que un programa tome decisiones durante la ejecución de la misma, permitiéndole elegir entre dos caminos, *verdadero* o *falso*, además de que son esenciales para resolver problemas donde se requiere evaluar situaciones, comparar valores o verificar el cumplimiento de ciertas reglas.

### Estructura Condicional Simple 🟢

Es aquella que después de evaluar una condición booleana determina su valor y ejecuta las instrucciones cuando la condición es verdadera [4].

En esta estructura, la condición pasa a evaluar dentro de un *if*, si la condición es verdadera se ejecuta un bloque de instrucciones, si la condición es falsa, se sale de la condición.

* **Problema:** Determinar si un número ingresado por el usuario es *mayor a 100*.

* 📄 [Diagrama de Flujo](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad%202/diagrama_1.png)

* **Código**

```c
#include <stdio.h>

int main(void) {

   int num;
   scanf("%d", &num);

   if (num > 100) {
      printf("El numero %d es mayor a 100", num);
   }

   return 0;
}
```

### Estructura Condicional Doble 🔄

Es aquella que permite evaluar una condición y elegir entre 2 opciones (verdadera y falsa) [4].

En esta estructura, la condición pasa a evaluar dentro de un *if*, si la condición es verdadera, se ejecuta un bloque de instrucciones, si la condición es falsa pasa a ejecutarse el bloque de instrucciones que están dentro de *else*.

* **Problema:** Ingresar la edad de una persona y determinar si es *mayor de edad* (≥18) o *menor de edad*.

* 📄 [Diagrama de Flujo](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad%202/diagrama_2.png)

* **Código**

```c
#include <stdio.h>

int main(void) {

   int edad;
   scanf("%d", &edad);

   if (edad >= 18) {
      printf("Tu edad es: %d\nEres mayor de edad", edad);
   } else {
      printf("Tu edad es: %d\nEres menor de edad", edad);
   }
   return 0;
}
```

### Estructura Condicional Multiple 🔢➡️

Es aquella que permite escoger entre dos o más opciones. La estructura switch valida la opción que se encuentra dentro del paréntesis y el resultado ejecuta el conjunto de instrucciones  seleccionado por la opción antes mencionada [4].

En esta estructura, la condición *switch* pasa a evaluar una variable dentro de un número determinado de casos, pueden ser n casos que se representan con la sintaxis *case 1, case 2, case n*; además, para cada caso hay que ingresar un valor de caso, este valor es estricto y se tiene que cumplir para que pueda ejecutarse como verdadero, caso contrario, evalúa el siguiente caso y así hasta llegar al *default* que se ejecuta cuando no cumple con ningún caso.

* **Problema:**  Solicitar al usuario un número del 1 al 5 y mostrar:

1 → “Hamburguesa”

2 → “Papas fritas”

3 → “Refresco”

4 → “Helado”

5 → “Combo”

Si el usuario ingresa un número fuera del rango, mostrar: “Opción inválida”.

* 📄 [Diagrama de Flujo](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad%202/diagrama_3.png)

* **Código**

```c
#include <stdio.h>

int main(void) {

   int comida;

   printf("Lista de Comidas\n");
   printf("1. Hamburguesas\n");
   printf("2. Papas fritas\n");
   printf("3. Refresco\n");
   printf("4. Helado\n");
   printf("5. Combo\n");

   printf("Ingrese el numero de la comida: ");
   scanf("%d", &comida);
   getchar();

   switch(comida){
        case 1:
            printf("Elegiste: Hamburguesas");
            break;
        case 2:
            printf("Elegiste: Papas fritas");
            break;
        case 3:
            printf("Elegiste: Refresco");
            break;
        case 4:
            printf("Elegiste: Helado");
            break;
        case 5:
            printf("Elegiste: Combo");
            break;
        default:
            printf("Opcion Invalida");   
            break;
    }

   return 0;
}
```

----

# Estructuras Repetitivas 🔁

Las **estructuras condicionales repetitivas** son aquellas que permiten ejecutar un conjunto de instrucciones varias veces, ya sea mientras se cumpla una condición o durante un número determinado de iteraciones. Son fundamentales cuando se necesita procesar listas de datos, repetir cálculos o automatizar tareas dentro de un algoritmo.

### Estructuras Repetitivas While 🔄⏳

Es un conjunto de sentencias dentro del while se ejecuta mientras la expresión booleana que controla el ciclo while es verdadera [4].

En esta estructura, la condición *while*  lee la condición, si esta condición es verdadera pasa al bloque de instrucciones en esta sentencia; una vez hecho este bloque nuevamente evalúa la condición y así sucesivamente hasta que la condición sea falsa para salir del bucle.

* **Problema:** Pedir al usuario un número y seguir solicitando otro mientras el número ingresado sea *negativo*.

* 📄 [Diagrama de Flujo](https://github.com/js-valencia/Teor-a-de-la-Programaci-n-Portafolio/blob/main/Unidad%202/diagrama_4.png)

* **Código**

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

* **Código**

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

* **Código**

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


