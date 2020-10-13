import rodados.*
import dependencias.*

class Pedido {
	var property distancia = 0
	var property tiempoMax = 0
	var property cantPasajeros = 0
	var property colores = #{}
	
	method velocidadRequerida(){
		//PARA 480 KM Y 6 HORAS SERA 80 KMS/HORA
		return distancia / tiempoMax
	}
	
	method autoSatisfacePedido(auto){
		/*  CONDICIONES PARA SATISFACER EL PEDIDO:
			** AUTO 10 KM + RAPIDO QUE PEDIDO
			** CANTIDAD DE PASAJEROS <= AUTO
			** NO SER DE COLOR INCOMPATIBLE */
		return self.velocidadRequerida() < (auto.velMax() + 10)
		and cantPasajeros <= auto.capacidad()
		and not colores.contains(auto.color())
		}
	
	
	
	method acelerar(){tiempoMax -= 1 }
	method relajar(){ tiempoMax += 1 } 
	
}
