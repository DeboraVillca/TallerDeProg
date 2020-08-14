object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
	method accion(){}
	method bultos(){return 1}
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
}
object paquetedeLadrillos{
	var property cantidad
	
	method peso(){return cantidad*2}
	method nivelPeligrosidad(){return 2}
	method accion(){cantidad=cantidad+12}
	method bultos(){return if(cantidad<=100){1} else if(cantidad>100 && cantidad <=300){2} else if (cantidad>300) {3}
	}
}
object arenaAGranel{
	var property peso
	method accion(){peso=peso+20}
	method bultos(){return 1}
	method nivelPeligrosidad(){return 1}
}
object bateriaAntiaerea{
	var misiles=false 
	method estaConMisiles(){misiles=true}
	method peso(){return if(misiles){300}else{200}}
	method nivelPeligrosidad(){return if(misiles){100}else{0}}
	method accion(){self.estaConMisiles()}
	method bultos(){if(misiles){1}else{2}}
	}
object contenedorPortuario{
	var cosas =[]
	method agregarCosa(unaCosa){cosas.add(unaCosa)}
	method peso(){return cosas.sum({e=>e.peso()})+100}
	method estaVacio(){return cosas.isEmpty()}
	method nivelPeligrosidad(){
		if(self.estaVacio()){return 0}else{return cosas.max({e=>e.nivelPeligrosidad()})}
	}
	method accion(){cosas.forEach({e=>e.accion()})}
	method bultos(){return cosas.sum({e=>e.bultos()})+1}
}
object residuosRadioactivos{
	var property peso
	method nivelPeligrosidad(){return 200}
	method accion(){peso=peso+15}
	method bultos(){return 1}
}
object embalajedeSeguridad{
	var cosa
	method definirCosa(unaCosa){cosa=unaCosa}
	method peso(){return cosa.peso()}
	method nivelPeligrosidad(){return cosa.nivelPeligrosidad()/2}
	method accion(){}
	method bultos(){return 2}
}