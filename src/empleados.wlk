object gimenez {
	var sueldoTotal = 0
	var sueldo = 15000
	var deuda= 0
	var dinero= 0
	
	method sueldo() { return 15000 }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){ sueldoTotal+= sueldo
		
		if(sueldo > deuda){
			dinero += sueldo - deuda
			deuda = 0
		}else{
			deuda-=  sueldo
		}
	}
	method totalCobrado(){return sueldoTotal}

	// TODO Hay un poco de lógica repetida entre cobrar y gastar, ¿cómo podría evitarse?	
	method gastar(cuanto){
		if ( cuanto > dinero ){
			deuda+= cuanto - dinero
			dinero = 0
		}
		else{
			dinero+= dinero - cuanto			
		}
	}
	
	method totalDeuda(){ return deuda }
	
	method totalDinero(){ return dinero }
}


object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15

	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada

	method cobrarSueldo() = self.sueldo() 
		
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo() 
		empleado.cobrarSueldo()
	}
}
