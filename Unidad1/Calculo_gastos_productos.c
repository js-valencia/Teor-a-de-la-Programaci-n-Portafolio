#include <stdio.h>

int main() {

    printf("Calculo de gastos de productos\n");

    float precio, cantidad, subtotal, IVA, valorIva, total;

    printf("Ingrese el precio del producto: ");
    scanf("%f", &precio);

    printf("Ingrese el numero de productos adquiridos: ");
    scanf("%f", &cantidad);
    getchar();

    subtotal = precio * cantidad;
    IVA = 0.15;

    valorIva = subtotal * IVA;
    total = subtotal + valorIva;

    printf("El total a pagar del producto requerido (con IVA) es de: $%.2f\n", total);

    return 0;

}
