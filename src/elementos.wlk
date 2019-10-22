/*Hogar
De cada hogar se manejan dos parámetros: el nivel de mugre y el confort que ofrece. Estos valores, los dos numéricos varían de hogar en hogar.
Se considera que un hogar es bueno si su nivel de mugre es la mitad del confort que ofrece, o menos.*/
import plaga.*
class Hogar{
	var property nivelDeMugre
	var property confort
	
	method esBueno(){
		return nivelDeMugre /2 <= confort 
	}
	//El nivel de mugre aumenta en la misma cantidad del nivel de daño de la plaga.
	method recibirAtaque(plaga){
		return nivelDeMugre +=  plaga.nivelDeDano() }
	}
/*Huerta
De cada huerta se conoce la capacidad de producción medida en kilos por mes; a efectos de este modelo es un simple número.
Se considera que una huerta es buena si su capacidad de producción supera un nivel que no es fijo, pero es el mismo para todas las huertas.*/
class Huerta{
	var property kilosPorMes =0
	var property nivel
	method esBuena(){
		return kilosPorMes > nivel
	}
	method recibirAtaque(plaga){
		if(not plaga.transmiteEnfermedades()){kilosPorMes -=(plaga.nivelDeDano() * 0.1 )}
		else{kilosPorMes -=(plaga.nivelDeDano() * 0.1 ) + 10}
	}
}
/*Huerta
La huerta baja su capacidad de producción, en una cantidad que equivale al 10% del nivel de daño de la plaga.
* Si la plaga transmite enfermedades, la capacidad de producción baja 10 puntos adicionales.
P.ej. una huerta que recibe un ataque de una plaga con nivel de daño 80 que no transmite enfermedades, baja su capacidad de producción en 8 unidades.
* Para una plaga igual pero que sí transmite enfermedades, la capacidad de producción baja en 18 unidades.*/
/*Mascota
De cada mascota se conoce el nivel de salud, un número. Cuanto más alto es este número, se considera que la mascota es más saludable.
Se considera que una mascota es buena si su nivel de salud supera las 250 unidades.*/
class Mascota{
	var property nivelDeSalud
	method esBuena(){
		return nivelDeSalud> 250
	}
	method recibirAtaque(plaga){
		if(plaga.transmiteEnfermedades()){nivelDeSalud -= plaga.nivelDeDano()}
		else{}
	}
}
/*Mascota
Si la plaga que ataca transmite enfermedades, entonces el nivel de salud de la mascota disminuye en una cantidad igual al nivel de daño de la plaga.
* Si la plaga no transmite enermedades, a la mascota no le pasa nada.*/