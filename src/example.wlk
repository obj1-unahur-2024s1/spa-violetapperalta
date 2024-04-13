// PERSONAS

object olivia {
	
	var concentracion = 6
	
	method gradoDeConcentracion() {
		return concentracion
	}
	
	method recibeMasajes(){
		concentracion+= 3
	}
	
	method discute(){
		concentracion-= 1
	}
	
	method banioDeVapor(){
		
	}
	
	
}

object bruno {
	var esFeliz = false
	var tieneSed = false
	var peso = 55000 
	
	method peso(){return peso}
	method sosFeliz(){return esFeliz}
	method tieneSed(){return tieneSed}
	
	method recibeMasajes(){
		esFeliz = true
	}
	
	method banioDeVapor(){
		peso-= 500
		tieneSed = true
	}
	
	method tomarAgua(){
		tieneSed = false
	}
	
	method comerFideos(){
		peso+= 250
		tieneSed = true
	}
	
	
	method correr(){
		/* Corre y baja de 300 gramos */
		peso-= 300
	}
	
	method verNoticiero(){
		/* Ve el noticiero y se pone triste. :( */
		esFeliz = false
	}
	
	method estaPerfecto(){
		return esFeliz && tieneSed && peso.between(50000,70000)
	}
	
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro{
	var contractura = 0
	var grasa = false
	
	
	method cuanContracturadoEstas(){
		if (contractura.between(0,3)){
			return "Nada contracturado"
		}
		else if(contractura.between(4,6)){
			return "Algo contracturado"
		}
		else return "Re contracturado"
	}
	
	method nivelGrasa(){
		return grasa
	}
	
	method recibeMasajes(){
		contractura = 0.max(contractura - 2) // Controla que el num. de contractura nunca pase a ser negativo.
	}
	
	
	method banioDeVapor(){
		// Quita la grasa de la piel.
		grasa = false
	}
	
	method comerBigMac(){
		// Pone la piel grasosa.
		grasa = true
	}
	
	method bajaAFosa(){
		// La piel se pone grasosa y la contractura aumenta en 1 punto.
		grasa = true
		contractura+= 1
	}
	
	method jugarPaddle(){
		// Aumenta la contractura en 3 puntos.
		contractura+= 3
	}
	
	method diaDeTrabajo(){
		// Ramiro baja a la fosa, come una big mac y vuelve a bajar a la fosa.
		self.bajaAFosa()
		self.comerBigMac()
		self.bajaAFosa()
	}
	
}


// SPA
	
	object spa{
		
		method atender(persona){
			persona.recibeMasajes()
			persona.banioDeVapor()
		}
		
		
	}







































