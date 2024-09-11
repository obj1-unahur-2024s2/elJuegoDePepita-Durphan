import pepita.*
import comidas.*
import extras.*
import wollok.game.*

object tutorial1 {
	method iniciar() {
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisualCharacter(pepita)
	}
}

object tutorial2 {
	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisualCharacter(pepita)
		config.configurarTeclas()
	}
}

object tutorial3 {
	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisualCharacter(pepita)
		config.configurarTeclas()
		config.configurarColisiones()
	}
}

object config {
	method configurarTeclas() {
		/*
		keyboard.left().onPressDo({ pepita.irA(pepita.position().left(1))})
		keyboard.right().onPressDo({ pepita.irA(pepita.position().right(1))})
		// Completar para que se pueda mover arriba y abajo
		*/
		keyboard.c().onPressDo({ pepita.comeLoQueHayaSiHayAlgo() })
	}
	
	method configurarColisiones() {
		game.onCollideDo(pepita, { algo => algo.interactuar(pepita) })
	}
}