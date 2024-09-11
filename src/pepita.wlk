import extras.*
import wollok.game.*

object pepita {
	var property energia = 100
	var property position = game.origin()
	
	method position(arg) {
		self.irA(arg)
		//game.say(self, "cambio posicion: " + position.x() + " - " + position.y())
		
		
		game.say(self, "energia actual: " + energia)
	}
	
	method image() = if (self.estaEnElNido()) {
		"pepita-grande.png"
	} else {
		if (self.estaCansada()) "pepita-gris.png" else "pepita.png"
	}
	
	method come(comida) {
		energia += comida.energiaQueOtorga()
		game.removeVisual(comida)
	}
	
	method vola(kms) {
		energia -= kms * 9
	}
	
	method irA(nuevaPosicion) {
		if (not self.estaCansada()) {
			self.vola(position.distance(nuevaPosicion))
			position = nuevaPosicion
		}
	}
	
	method comeLoQueHayaSiHayAlgo() {
		if (not game.colliders(self).isEmpty()) game.uniqueCollider(self).interactuar(
				self
			)
	}
	
	method estaCansada() = energia <= 0
	
	method estaEnElNido() = self.position() == nido.position()
}