/** First Wollok example */
//Author: Diaz Matias Hernan

object pepita{
	
	//inicializacion
    var energia = 0
	
	//Aumento de energia ej1
    method come(cantidad){
        energia = energia + 4 * cantidad
    }
	
	//Vuela dependiendo la energia ej1
    method vuela(kilometros){

        if(energia < 0){
            return "No puedo volar"
        }
        else{
        	energia = energia - 10 - kilometros
            return "vole"
        }
    }

    //getter de energia ej1
    method energia(){
        return energia
    }
	
	//Estado de la energia ej2
    method estaDebil(){
        if(energia < 50){
            return "Estoy debil"
        }
        else{
            return "No estoy debil, tengo energia"
        }

    }
	
	//Estado de felicidad segun energia ej2
    method estaFeliz(){
        if((energia <= 1000) && (energia >= 500)){
            return "Estoy feliz"
        }
        else{
            return "No estoy feliz"
        }
    }
	
	//Cuanto quiere volar ej2
	/*
	 * De base, quiere volar (energía / 5) kilómetros, p.ej., si tiene 120 de energía, quiere volar 24 kilómetros.
	Sobre esta base, considerar los siguientes agregados:
	Si la energía está entre 300 y 400 joules, entonces sumar 10 kilómetros.
	Si la energía es múltiplo de 20, entonces sumar 15 kilómetros.
	Por ejemplo, si la energía de Pepita es de 340 joules, entonces quiere volar 68 + 10 + 15 = 93 kilómetros.
	 */
	
    method cuantoQuiereVolar(){
    	
    	var quierevolar = energia / 5
    	
    	if((energia >= 300) && (energia <= 400)){
    		quierevolar = quierevolar + 10
    	}
    	if(energia % 20 == 0){
    		quierevolar = quierevolar + 15
    	}
    	return quierevolar
    	
    }

}