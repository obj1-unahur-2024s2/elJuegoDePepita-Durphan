import pepita.*
import wollok.game.*

object nido {
	method position() = game.at(5, 5)
	
	method image() = "nido.png"
	
	method energiaQueOtorga() = 0
	
	method interactuar(algo) {
		game.say(algo, "Ganaste")
	}
}

object silvestre {
	method position() = game.at(pepita.position().x().max(3), 0)
	
	method image() = "silvestre.png"
	
	method energiaQueOtorga() = 0
	
	method interactuar(algo) {
		algo.energia(0)
		game.say(algo, "Perdiste")
	}
}