object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() = "frutilla" 
	method libreGluten() { return true }
}

object alfajor {
	var peso = 300
	
	method precio() {return 12}
	method gusto() {return "chocolate"}
	method libreGluten() {return false}
	method mordisco() {peso = peso * 0.8}
	method peso() { return peso }
}

object caramelo {
	var peso = 5
	
	method precio() {return 1}
	method gusto() {return "frutilla"}
	method libreGluten() {return true}
	method mordisco() {peso = peso -1}
	method peso() { return peso }
}

object chupetin {
	var peso = 7
	
	method precio() {return 2}
	method gusto() {return "naranja"}
	method libreGluten() {return true}
	method mordisco() {peso = (peso*0.50).max(2)}
	method peso() { return peso }
}

object oblea {
	var peso = 250
	
	method precio() { return 5 }
	method gusto() { return "vainilla" }
	method libreGluten() { return false }
	method mordisco() { 
		if (peso>70)
		peso = peso*1.5
		else
			peso = peso*0.75
	}
	method peso() { return peso }
}

object chocolatin {
	var pesoInicial 
	var pesoActual
	
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method libreGluten() { return false }
	method gusto() { return "chocolate" }
	method mordisco() { pesoActual = pesoActual - 2 }
	method precio() { return 0.50*pesoInicial }
	method peso() { return pesoActual }
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() { return golosinaInterior.precio() }
	method peso() { return golosinaInterior.peso() + 4 }
	method mordisco() {
		golosinaInterior.mordisco()
		pesoBanio = (pesoBanio - 2).max(0)
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() { return golosinaInterior.libreGluten() }	
}