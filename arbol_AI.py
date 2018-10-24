# -*- coding: utf-8 -*-
"""
Created on Tue Oct 23 20:06:25 2018

@author: GAMER 104
"""

# -*- coding: utf-8 -*-
"""
Editor de Spyder

Este es un archivo temporal.
"""
class nodo:
    def _init_(self, datos, hijos=None):
        self.datos = datos
        self.hijos= None
        self.padre = None
        self.coste = None
        self.set_hijos(hijos)


    def set_hijos(self, hijos):
        self.hijos =hijos
        if self.hijos != None:
            for h in self.hijos:
                h.padre = self
        
    def get_hijos(self) :
        return self.hijos
    
    def get_padre(self):
        return self.padre
    
    def set_padre(self, padre):
        self.padre= padre
        
    def set_datos(self, datos):
        self.datos= datos
    
    def get_datos(self):
        return self.datos
    
    def set_coste(self, coste):
        self.coste = coste
        
    def get_coste(self):
        return self.coste
    
    def igual(self, nodo):
        if self.get_datos()== nodo.get_datos():
            return True
        else:
           return False
            
    def en_lista(self, lista_nodos):
        en_la_lista = False
        for n in lista_nodos:
            if self.igual(n) :
                en_la_lista = True
        return en_la_lista
    
    def _str_(self):
        return str(self.get_datos())
    
    