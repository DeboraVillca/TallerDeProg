import golosinas.*

object mariano {
	var bolsa = []
	
	method comprar(golosina) { bolsa.add(golosina) }
	method desechar(golosina) { return bolsa.remove(golosina) }
	method probarGolosinas() {	return  bolsa.forEach({ e=> e.mordisco() }) }
	method hayGolosinaSinTACC() { return bolsa.any( { e=> e.libreGluten() } ) }
	method preciosCuidados() { return  bolsa.all({ e=> e.precio()<=10 }) }
	method golosinaDeSabor(unGusto) { return bolsa.find(unGusto) }
	method golosinaDeSabores(unSabor) { return bolsa.filter(unSabor) }
	method sabores() { }
	method golosinaMasCara() { return bolsa.max( { e=> e.precio() } ) }
	method pesoGolosinas() { return bolsa.sum( { e=> e.peso() } ) }
	method golosinasFaltantes(golosinasDeseadas) { return golosinasDeseadas.asSet().difference(bolsa.asSet()) }
	method gustosFaltantes(gustosDeseados) { return gustosDeseados.asSet().difference(bolsa.asSet()) }
	
}