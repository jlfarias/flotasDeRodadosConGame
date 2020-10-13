import rodados.*
import pedidos.*

class Dependencia{
	var property flota = []
	var property cantEmpleados = 0
	var property pedidos = []
	
	// PEDIDOS
	method agregarPedido(unPedido){ pedidos.add(unPedido) }
	method quitarPedido(unPedido){ pedidos.remove(unPedido) }	
	
	method totalPasajeros(){return pedidos.sum({p => p.cantPasajeros()})}
	
	method pedidosInsatifechos(){
		// RETORNAR UNA COLECCION DE PEDIDOS (FILTER?)
		// RESOLVER COMO PASAR CADA AUTO DE LA LISTA
		//return pedidos.filter({ p => p.autoSatisfacePedido( /*.....*/ ) }) 
		}
	
	method es_Incompatible(unColor){ return pedidos.map({p => p.colores()}).contains(unColor) }
	method relajarPedidos(){ pedidos.forEach({p => p.relajar()} )}
	
	
	// FLOTA
	method agregarAFlota(unRodado){ flota.add(unRodado) }
	method agregarAll(rodados){ flota.addAll(rodados) }
	method quitarDeFlota(unRodado){ flota.remove(unRodado) }
		
	method pesoTotalFlota(){ return flota.sum({rod => rod.peso()}) }
	method estaBienEquipada(){ return flota.size() > 3 and flota.all({a => a.velMax() > 100})}
	
	method capacidadTotalEnColor(color) { 
		return flota.filter({a => a.color() == color }).sum({a => a.capacidad()})
	}
	
	method colorDelRodadoMasRapido(){ return (flota.max({rod => rod.velMax()}).color())	}
	method capacidadFaltante(){ return cantEmpleados - flota.sum({ a => a.capacidad()})	}
	method esGrande(){ return flota.size() > 5 and self.cantEmpleados() >= 40 }
	
	/*  EMPLEADOS*/
	method setCantEmpleados(cantidad){cantEmpleados = cantidad}
	method cantEmpleados(){return cantEmpleados }
	
}


