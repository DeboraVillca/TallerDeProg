object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}
object milanesa{
	var property precio = 260
	method precio(){return precio}
	method precio(precioNuevo){precio=precioNuevo}
	method esComida(){return true}
	method esElectrodomestico(){return false}
}
object salsaDeTomate{
	var property precio=90
	method precio(){return precio}
	method precio(precioNuevo){precio=precioNuevo}
	method esComida(){return true}
	method esElectrodomestico(){return false}
}
object microondas{
	method precio(){4200}
	method esComida(){return false}
	method esElectrodomestico(){return true}
}
object cebollas{
	method precio(){return 25}
	method esComida(){return true}
	method esElectrodomestico(){return false}
}
object dolar{
	var property valorDolar=50
	method cotizacion(){return valorDolar}
	method cotizacion(nuevoValor){valorDolar=nuevoValor}
}
object compu{
	method precio(){return dolar.cotizacion() * 500}
	method esComida(){return false}
	method esElectrodomestico(){return true}
}
object packdeComida{
	var property plato 
	var property aderezo
	method configurar(unPlato, unAderezo){
		plato=unPlato
		aderezo=unAderezo}
	method precio()=plato.precio()+aderezo.precio()
	method esComida()=true
	method esElectrodomestico()=false
}
object packRegalo{
	var cosas=[]
	method agregarCosa(cosa){cosas.add(cosa)}
	method esComida(){return cosas.all({c=>c.esComida()})}
	method esElectrodomestico(){return cosas.any({c=>c.esElectrodomestico()})}
}