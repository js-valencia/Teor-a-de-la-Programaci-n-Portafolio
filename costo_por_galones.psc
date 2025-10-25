Algoritmo costo_por_galones
	
	//Definir valores y variables
	
	Definir distancia Como Real;
	Definir rendimiento Como Real;
	Definir costo Como Real;
	Definir costoGalon Como Real;
	Definir PRECIOGALON Como Real;
	
	//Datos de Entrada
	
	Escribir "Calculador de gasto de gasolina en un viaje";
	
	Escribir "Ingrese la distancia recorrida en Km: ";
	Leer distancia;
	
	Escribir "Ingrese el rendimiento de su vehículo (km/galón): ";
	Leer rendimiento;
	
	//Proceso
	
	PRECIOGALON = 2.911
	
	costoGalon = distancia / rendimiento
	
	costo = costoGalon * PRECIOGALON
	
	//Salida
	
	Escribir "El costo total consumido durante el viaje es de: $", costo;
	
FinAlgoritmo
