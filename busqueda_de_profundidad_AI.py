from  arbol_AI import Nodo


def buscar_solucion_DFS_recursivo(nodo_inicial, solucion, visitados) :
	visitados.append(nodo_inicial.get_datos())

	if nodo_inicial.get_datos() == solucion:
		return nodo_inicial
	else: 
		#Expandir nodos sucesores
		dato_nodo = nodo_inicial.get_datos()
    	#operador izquierdo
		hijo = [dato_nodo[1], dato_nodo[0], dato_nodo[2], dato_nodo[3]]
		hijo_izquierdo = Nodo(hijo)
		#operador central
		hijo = [dato_nodo[0], dato_nodo[2], dato_nodo[1], dato_nodo[3]]
		hijo_central = Nodo(hijo)        
        #operador derecho
		hijo = [dato_nodo[0], dato_nodo[1], dato_nodo[3], dato_nodo[2]]
		hijo_derecho = Nodo(hijo)
		nodo_inicial.set_hijos([hijo_izquierdo, hijo_central, hijo_derecho])

		for nodo_hijo in nodo_inicial.get_hijos() :
			if( not nodo_hijo.get_datos() in visitados) :
				sol = buscar_solucion_DFS_recursivo(nodo_hijo, solucion, visitados)
				if sol != None :
					return sol

	return None

if __name__ == "__main__" :
	estado_inicial= [4,2,3,1]
	solucion = [1,2,3,4]
	visitados = []
	nodo_solucion = None 
	nodo_inicial = Nodo(estado_inicial)
	nodo = buscar_solucion_DFS_recursivo(nodo_inicial, solucion, visitados)
	    
	resultado = []
	while nodo.get_padre() != None:
		resultado.append(nodo.get_datos())
		nodo = nodo.get_padre()

	resultado.append(estado_inicial)
	resultado.reverse()
	print (resultado)