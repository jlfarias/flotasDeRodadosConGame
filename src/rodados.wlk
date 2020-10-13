import wollok.game.*

class Corsa {
	var property color
	var property position = new Position(x = 4, y = 7)
	var property imagen = "autitorojo.png"
	const pasoPor = #{}
	
	// CONSULTAS POSICION
	method pasoPor(posicion){
		return pasoPor.contains(posicion)
	}
	method pasoPorFila(numero){
		return pasoPor.contains(numero)
	}
	method recorrioFilas(lista_de_numeros){
		
	}
	
	//MOVIMIENTOS
	method moverNorte(){
		self.position(self.position().up(1))
		pasoPor.add(position)
	}
	method moverSur(){
		self.position(self.position().down(1))
		pasoPor.add(position)
	}
	method moverEste(){
		self.position(self.position().right(1))
		pasoPor.add(position)
	}
	method moverOeste(){
		self.position(self.position().left(1))
		pasoPor.add(position)
	}
	
	
	method capacidad(){return 4}
	method velMax(){return 150}
	method peso(){return 1300}
}

class Kwid{
	var tanqueAdicional = false
	
	method tanqueAdicional(unValor){ tanqueAdicional = unValor}
	method capacidad(){ return if(tanqueAdicional) 4 else 3 }
	method velMax(){ return if(tanqueAdicional) 120 else 110 }
	method peso(){return if(tanqueAdicional) 1350 else 1200 }
	method color(){ return azul } 
}

// DEFINICIION TRAFIC

object traffic{
	var motor = null
	var interior = null
	method setmotor(unMotor){ motor = unMotor}
	method setInterior(unInterior){ interior = unInterior}
	method capacidad(){return interior.capacidad()}
	method velMax(){return motor.velMax()}
	method peso(){return motor.peso()+ interior.peso() + 4000}
	method color(){ return blanco} 
}

// INTERIORES PARA LA TRAFFIC
object comodo{
	const capacidad = 5
	const peso = 700
	
	method capacidad(){return capacidad }
	method peso(){return peso }
}

object popular{
	const capacidad = 12
	const peso = 700
	
	method capacidad(){return capacidad }
	method peso(){return peso }
}

//  MOTORES DE LA TRAFFIC

object pulenta{
	method velMax(){return 130}
	method peso(){return 800}
}

object batata{
	method velMax(){return 80}
	method peso(){return 500}	
}


// AUTO ESPECIAL

class AutoEspecial{
	var property capacidad
	var property peso
	var property color
	var property velMax
}


// COLORES
object blanco{}
object beige{}
object azul{
	method imagen() { return "autitoAzul.png" }
}
object rojo{
	method imagen() { return "autitoRojo.png" }
}
object verde{
	method imagen() { return "autitoVerde.png" }
}
object negro{}



