def backtracking(variables, rango_variables, optimo, profundidad):
	min=rango_variables[profundidad][0]
	max=rango_variables[profundidad][1]

	for v in range(min, max) :
		variables[profundidad]=v
		if profundidad < len(variables)-1 :
			if es_completable(variables) :
				optimo = backtracking(variables[:], rango_variables, optimo, profundidad + 1)
			else :
				sol = evalua_solucion(variables)
				if sol > evalua_solucion(optimo) and es_completable(variables) :
					optimo = (variables[0], variables[1])
	print(optimo)
	return optimo

def evalua_solucion(variables) :
	x1=variables[0]
	x2=variables[1]
	val = (12-6) * x1 + (8-4) * x2
	return val

def es_completable(variables) :
	x1=variables[0]
	x2=variables[1]
	val1= 7 * x1 + 4 * x2
	val2= 6 * x1 + 5 * x2
	if val1<=150 and val2<=160 :
		return True
	else : 
		return False

if __name__ == "__main__" :
	variablesl = [0,0]
	rango_variablesl=[(0,51), (0,76)]
	optimol =(0,0)
	sol = backtracking(variablesl, rango_variablesl, optimol, 0)
	print("mejor solucion")
	print(str( sol[0] ) + " Pantalones")
	print(str(sol[1]) + " Camisetas")
	print(evalua_solucion(sol))