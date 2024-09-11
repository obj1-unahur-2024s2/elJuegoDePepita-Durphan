import wollok.game.*

object manzana {
	method position() = game.at(5, 3)
	
	method image() = "manzana.png"
	
	method energiaQueOtorga() = 50
	
	method interactuar(algo) {
		game.removeVisual(self)
		algo.come(self)
	}
}

object alpiste {
	method position() = game.at(2, 5)
	
	method image() = "alpiste.png"
	
	method energiaQueOtorga() = 90
	
	method interactuar(algo) {
		game.removeVisual(self)
		algo.come(self)
	}
}