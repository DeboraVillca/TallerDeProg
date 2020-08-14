import cosas.* 

object casaDePepeYJulian {
	const cosas = []
method comprar(cosa){cosas.add(cosa)}
method cantidadDeCosasCompradas(){return cosas.size()}
method tieneComida(){return cosas.any({e=>e.esComida()})}


method vieneDeEquiparse(){
	return cosas.last().esElectrodomestico() || cosas.last().precio() > 5000}
method esDerrochona(){return cosas.SUM({c => c.precio()})>9000}
method compraMasCara(){return cosas.MAX({c=>c.precio()})}

method electrodomesticosComprados(){
	 cosas.filter({e=>e.esElectrodomestico()})
}
method malaEpoca(){return cosas.all({c => c.esComida()})}
method queFaltaComprar(cosasDeseadas){return cosasDeseadas.AsSet().difference(cosas.AsSet())}

method faltaComida(){return cosas.count({c=>c.esComida()})<2}
/////////////////////////////////////////////////////
method gastoenComida(){return cosas.precio().SUM({s=>s.esComida()})}
method hayElectrodomesticosBaratos(){return cosas.esElectrodomestico().any({e=>e.precio()})<3000}
method preciosDeElectrodomesticos(){cosas.precio().filter({e=>e.esElectrodomestico()})}
method primeraComidaComprada(){return cosas.firts({e=>e.esComida()})}
}


