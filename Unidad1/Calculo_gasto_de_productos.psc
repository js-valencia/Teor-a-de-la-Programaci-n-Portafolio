Algoritmo Calculo_gasto_de_productos
	
	Definir IVA Como Real;
	Definir precio Como Real;
	Definir cantidad Como Real;
	Definir subtotal Como Real;
	Definir valorIva Como Real;
	Definir total Como Real;
	
	//Entrada de Datos
	
	Escribir "Calculador de Gasto en una Tienda: "
	
	Escribir "Ingrese el precio del producto: ";
	Leer precio;
	
	Escribir "Ingrese el numero de productos adquiridos: ";
	Leer cantidad;
	
	//Proceso 
	
	IVA = 0.15
	
	subtotal = precio * cantidad;
	
	valorIva = subtotal * IVA;
	
	total = subtotal + valorIva;
	
	//Salida
	
	Escribir "El total a pagar del producto requerido (con IVA) es de: ", total;
	
FinAlgoritmo

