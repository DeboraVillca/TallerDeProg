import cosas.*
object camion {
	const property cosas = []
	
	method cargar(unaCosa) {
		cosas.add(unaCosa) 
		return unaCosa.accion()
	}
	method descargar(unaCosa){
		cosas.remove(unaCosa)
	}
	method todoPesoPar(){return cosas.all({e=>e.peso()%2==0})}
	method hayAlgunoQuePesa(peso){
		return cosas.any({e=>e.peso()==peso})
	}
	method elDeNivel(nivel){
		return cosas.find({e=>e.nivelPeligrosidad()==nivel})
	}
	method pesoTotal(){
		return cosas.sum({e=>e.peso()}+1000)
	}
	method excedidoDePeso(){
		return self.pesoTotal()>2500
	}
	
	
	method objetosQueSuperanPeligrosidad(nivel) {
			return cosas.filter({e=>e.nivelPeligrosidad()>nivel})
		}

	method objetosMasPeligrososQue(cosa){
		return cosas.objetosQueSuperanPeligrosidad() > cosa.nivelPeligrosidad()
		}
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){
		return cosas.all({e=>e.nivelPeligrosidad()<nivelMaximoPeligrosidad})
		and not self.excedidoDePeso()
		}
	method tieneAlgoQuePesaEntre(min, max){
		return cosas.any({e=>e.peso().between(min,max)})
	}
	method cosaMasPesada(){
		return cosas.max({e=>e.peso()})
		}
	method pesos(){
		return cosas.map({e=>e.peso()})
	}
	method totalBultos(){return cosas.sum({e=>e.bultos()})}	
	
}
