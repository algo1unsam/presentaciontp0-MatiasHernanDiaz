//Author: Diaz Matias Hernan

object pepita{
	
	//inicializacion
    var energia = 0
	
	//Aumento de energia ej1
    method come(alimento, cantidad){
    	
    	if(alimento == "alpiste"){
    		energia = energia + (4 * cantidad)
    	}
    	else{
    		 if(alimento == "mondongo"){
    			energia = energia + (100 * cantidad)
    		}
    		else{
    			if(alimento == "alcaucil"){
    			energia = energia + (20 * cantidad)
    			}
    			else{
    				if(alimento == "sorgo"){
    				energia = energia + (9 * cantidad)
    				}
    				else{
    					//Probar darle de comer un BigMac a Pepita. 
    					//Va a dar un error ¿por qué? Arreglar la implementación de bigMac para 
    					//transformarlo en un alimento posible para Pepita.

    					energia = energia + (1 * cantidad) //no le va a dar tanta energia
    				}
    			}
    		}
    	}
    }
    
    method comer(_alimento, cantidad){
    	energia = energia + (_alimento.estado()) * cantidad
    }
    
	
	//Vuela dependiendo la energia ej1
    method vuela(kilometros){
        energia = energia - 10 - kilometros
    }

    //getter de energia ej1
    method energia(){
        return energia
    }
	
	//Estado de la energia ej2
    method estaDebil(){
    	//devuelve 0 si esta debil
        if(energia < 50){
            return 0 //No me recomienda poner True o False
        }
        else{
            return 1 //No me recomienda poner True o False
        }

    }
	
	//Estado de felicidad segun energia ej2
    method estaFeliz(){
    	//devuelve 1 si esta Feliz (invertido al estado Debil. si esta Debil no puede estar Feliz)
        if((energia <= 1000) && (energia >= 500)){
            return 1 //No me recomienda poner True o False
        }
        else{
            return 0 //No me recomienda poner True o False
        }
    }
	
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
    
    //PREGUNTAR SI ESTO ES CORRECTO O UNA BUENA PRACTICA
    method salirAComer(){
    	self.vuela(5)
    	self.come("alpiste",80)
    	self.vuela(5)
    }
    
    method haceLoQueQuieras(){
    	
    	if(self.estaDebil() == 0){
    		//si esta debil va a comer alpiste
    		self.come("alpiste",20)
    	}
    	
    	if(self.estaFeliz() == 1){
    		//si esta feliz vuela 8 km
    		self.vuela(8)
    	}
    }

}

object mijo{
	
	var estado_mijo
	
	method mojarse(){
		estado_mijo = 15
	}
	
	method secarse(){
		estado_mijo = 20
	}
	
	//getter
	method estado(){
		return estado_mijo
	}
}

object canelones{
	
	var estado_canelones = 20
	
	//getter
	method estado(){
		return estado_canelones
	}
	
	method ponerSalsa(){
		estado_canelones = estado_canelones + 5
	}
	
	method sacarSalsa(){
		estado_canelones = estado_canelones - 5
	}
	
	method ponerQueso(){
		estado_canelones = estado_canelones + 7
	}
	
	method sacarQueso(){
		estado_canelones = estado_canelones - 7
	}
	
}

object roque{
	
	method entrenar(_ave){
		_ave.vuela(10)
		_ave.come("alpiste",300)
		_ave.vuela(5)
		_ave.haceLoQueQuieras()
	}
}
