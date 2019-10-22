class Plaga {
	var poblacion = 0
	method transmiteEnfermedades(){
		return poblacion >= 10 
	}
	method efectoDeAtaque(){
		 poblacion+= poblacion * 0.10
	}	
	
}
/*Plaga de cucarachas:
De estas plagas se conoce, además, el peso promedio de cada bicho. P.ej. podemos tener una plaga de 30 cucarachas que pesan, en promedio, 8 gramos.
El nivel de daño que produce una plaga de cucarachas equivale a la mitad de su población.
Para transmitir enfermedades, el peso promedio debe ser de 10 gramos o más (además de la condición común para todas las plagas).*/
class PlagaCucarachas inherits Plaga{
	var property pesoPromedio = 0
	method nivelDeDano(){
		return poblacion  / 2
	}
	override method transmiteEnfermedades(){
		return super() and pesoPromedio >= 10
	}
	override method efectoDeAtaque(){
		   super() 
		   pesoPromedio+= 2
	}
	
}
/*Plaga de mosquitos:
El nivel de daño que producen las plagas de este tipo equivale a la población.
Para transmitir enfermedades,
la población debe ser un número múltiplo de 3 (además de la condición común para todas las plagas); la cuenta es poblacion % 3 == 0.*/
class PlagaMosquitos inherits Plaga{
	method nivelDeDano(){
		return poblacion
	}
	override method transmiteEnfermedades(){
		return super() and poblacion % 3 == 0
	} 
}
/*Plaga de pulgas:
El nivel de daño que produce una plaga de pulgas equivale al doble de su población.
Las plagas de pulgas no agregan ninguna condición adicional para transmitir enfermedades.*/
class  Pulga inherits Plaga {
	method nivelDeDano(){
		return poblacion *2
	}
}
/*Plaga de garrapatas:
El nivel de daño que producen, y el criterio para determinar si transmiten enfermedades,
* son iguales a los de la plaga de pulgas. Más adelante va a aparecer una diferencia entre pulgas y garrapatas.*/
class PlagaGarrapatas inherits Pulga {
	override method efectoDeAtaque(){poblacion +=poblacion * 1.2 }
}

//super : llama al return de poblacion >= 10 
//override : llama al metodo que queres cambiar o modificar agregandole otras condiciones.
//clean code = libro
