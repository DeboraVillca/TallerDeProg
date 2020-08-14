class Corsa{
	var property color 
	method peso() =1300
	method velocidadMax()=150
	method capacidad()=4
}
class Kwid{
	var property tieneTanque 
	method peso(){return if(tieneTanque){1200+150}else{1200}}
	method capacidad(){return if(tieneTanque){3}else{4}}
	method velocidadMax(){return if(tieneTanque){120}else{110}}
	method color()="azul"
}

object trafic{
	var property interior 
	var property motor
	
	method capacidad()=interior.capacidad()
	method peso()=400+interior.pesoInterior()+motor.peso()
	method velocidadMax()=motor.max()
	method color()="Blanco"
}
object interiorComodo{
	method capacidad()=5
	method peso()=700
}
object interiorPopular{
	method capacidad()=12
	method peso()=1000
}
object pulenta{
	method peso()=800
	method max()=130
}
object bataton{
	method peso()=500
	method max()=80
	
}
class Especial{
	var property capacidad
	var property velocidadMax
	var property peso 
	var property color 
}
class Dependencias{
	var flota=[]
	var property cantEmpleados
	method agregarAFlota(unRodado){flota.add(unRodado)}
	method quitarDeFlota(unRodado){}
	method pesoTotalFlota(){return flota.sum({f=>f.peso()})}
	method estaBienEquipada(){return flota.size()>3 and flota.all({f=>f.velocidadMax()>=100})}
	method capacidadTotalEnColor(color){return flota.filter({f=>flota.color()==color}).sum({f=>f.capacidad()})}
	method colorDeRodadoMasRapido(){return flota.max({f=>f.velocidadMax()}.color())}
	method capacidadFaltante(){return 0.max(cantEmpleados -self.capacidadTotal())}
	method capacidadTotal(){return flota.sum({f=>f.capacidad()})}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}