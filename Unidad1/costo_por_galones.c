#include <stdio.h>

int main() {

    printf("Calculo de costo por galones de gasolina\n");

    float distancia, rendimiento, PRECIOGALON, costo, costoGalon;

    printf("Ingrese la distancia a recorrer (en kilometros): ");
    scanf("%f", &distancia);

    printf("Ingrese el rendimiento del vehiculo (km/galon): ");
    scanf("%f", &rendimiento);

    PRECIOGALON = 2.911;

    costoGalon = distancia / rendimiento;

    costo = costoGalon * PRECIOGALON;

    printf("El costo total consumido durante el viaje es de $%.2f\n", costo);

    return 0;

}
