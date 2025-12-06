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

# Estructuras Condicionales

Las **estructuras condicionales**  permiten que un programa tome deciciones durante la ejecución de la misma permitiendole elegir entre dos caminos, *verdadero* o *falso*, además que son esenciales para resolver problemas donde se requiere evaluar situaciones, comparar valores o verificar el cumplimiento de ciertas reglas.

### Estructura Condicional Simple

Es  aquella  que  después  de  evaluar  una  condición  booleana determina  su  valor  y  ejecuta  las  instrucciones  cuando  la  condición  es  verdadera [4].

En esta estructura, la condición pasa a evaluar dentro de un *if*, si la condición es verdadera se ejecuta un bloque de instrucciones, si la condición es falsa, se sale de la condición.

* **Problema:** Determinar si un número ingresado por el usuario es *mayor a 100*.

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

### Estructura Condicional Doble

Es  aquella que  permite  evaluar  una  condición  y  elegir  entre  2 opciones  (verdadera  y  Falsa) [4].

En esta estructura, la condicion pasa a evaluar dentro de un *if*, si al condición es verdadera, se ejecuta un bloque de instrucciones, si la condición es falsa pasa a ejecutar el bloque de instrucciones que estan dentro de *else*.

* **Problema:** Ingresar la edad de una persona y determinar si es *mayor de edad* (≥18) o *menor de edad*.

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

### Estructura Condicional Multiple

Es  aquella que  permite escoger  entre  dos  o más opciones.  La estructura switch valida la opción que se encuentra dentro del paréntesis y el resultado ejecuta  el  conjunto  de  instrucciones  seleccionada  por  la  opción  antes  mencionada [4].

En esta estructura, la condicion *switch* pasa a evaluar una variable dentro de un numero determinado de casos, pueden ser n casos que se representan con la sintaxis *case 1, case 2, case n*; además, para cada caso hay que ingresar un valor de caso, este valor es estricto y se tiene que cumplir para que pueda ejecutarse como verdadero, caso contrario, evalua el siguiente caso y así hasta llegar al *default* que se ejecuta cuando no cumple con ningun caso.

* **Problema:**  Solicitar al usuario un número del 1 al 5 y mostrar:

1 → “Hamburguesa”

2 → “Papas fritas”

3 → “Refresco”

4 → “Helado”

5 → “Combo”

Si el usuario ingresa un número fuera del rango, mostrar: “Opción inválida”.

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

# Estructuras Repetitivas

Las **estructuras condicionales repetitivas** son aquellas que permiten ejecutar un conjunto de instrucciones varias veces, ya sea mientras se cumpla una condición o durante un número determinado de iteraciones. Son fundamentales cuando se necesita procesar listas de datos, repetir cálculos o automatizar tareas dentro de un algoritmo.

### Estructuras Repetitivas While

Es un conjunto de sentencias dentro del while se ejecuta mientras la expresión booleana que controla el ciclo while es verdadera [4].

En esta estructura, la condición *while*  lee la condición, si esta condición es verdadera pasa al bloque de intrucciones en esta sentencia; una vez hecho este bloque nuevamente evalua la condición y así sucesivamente hasta que la condición sea falsa para salir del bucle.

* **Problema:** Pedir al usuario un número y seguir solicitando otro mientras el número ingresado sea *negativo*.

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
### Estructuras Repetitivas Do While

Tiene una forma diferente al momento de ejecutarse, es importante indicar que en la estructura do-while realiza un conjunto de instrucciones y después se evalúa la condición, esto quiere decir que si la condicional resulta ser falsa el conjunto de instrucciones se ejecutaron al menos 1 vez [4].

Esta estructura comienza con un *do* y seguido el bloque de instrucciones, después se ubica un while seguido de la condición a evaluar, si la condición es verdadera, se repite el bloque de instrucciones dentro del do y así susesivamente, y si es falsa termina el bucle y continua con el programa.

* **Problema:** Crear un programa que pida al usuario una contraseña (número). El programa debe seguir pidiendo la contraseña hasta que el usuario ingrese el valor correcto.  

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

### Estructuras Repetitivas For

El bucle for se utiliza mejor para bucles controlados por contadores, donde un conjunto de declaraciones se ejecuta una vez para cada valor en un rango específico [4].

Para esta estructura iniciamos el bucle con un *for*, y tiene que tener tres expresiones, en la primera expresión damos el valor del contador, en la seguna expresión se ubica la condición y en la tercera expresión se incrementa o decrementa el contador; despues ponemos el bloque de instrucciones que debemos evaluar.

* **Problema:** Solicitar un número entero positivo y mostrar todos los números desde *1 hasta ese número*.

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

# Ejercicio Combinado Estructura Condicional y Repetitiva



----

# Principales Dificultades en la Aplicación de los Contenidos



----

# Reflexión Crítica de los Aprendizajes de la Unidad


----

# Tareas Entregadas



----


