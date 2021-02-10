# Elaborado por: Gabriela Navarro
# Colaboradores:
# Fecha de elaboracion: 10/02/2021
# Ultima modificacion: x

#configuracion inicial 
a=2
b=3
c=4
ls() #para mostrar los objetos que existen ya
rm(a) #para borrar cosas- se meten en el parentesis
#instalar pacman para recuperar paquetes
install.packages('pacman')
pacman::p_load(tidyverse,haven,readxl,WriteXLS) #haven leer y exportar librerias desde stata- readxl es leer archivos de excel--para que la otra persona tenga los paquetes que necesitan para correrse 
#para hablar de letras o caracteres se pone " o '
vector_c = c("hola",'a') # se separan los elementos por coma
is.character(vector_c) #revisar si es caracter o no
#logicos son TRUE o FALSE - etiquetas - sin usar comillas - Tiene su is.logical

#ESTRUCTURA DE DATOS - tipos de objetos (vector (1d-fila o columna)/matriz (2d- filas y columnas)/array (3d- n dimensiones tipo cubito) - homogeneos (todos sus elementos son del mismo tipo de datos) | lista/dataframe(como base de datos de excel) si son heterogeneos pueden tener numeros y letras)
char_vec = c("a","b","c","r","d","a","e","c","a","r","r") 
1:15 #para que salgan numeros enteros del 1 al 15 ordenados
char_vec
vectorx=c(1,2, "c") #los toma todos como caracteres porque tienen que ser homogeneos 
vectorx=c(1,2) #ya aquí si son numeros
is.numeric(vectorx)
is.numeric(char_vec)
#para pasar de un tipo a otro tipo -as.lo que quiera pasar
as.numeric(c(1,2,"c")) #sale warning pero warning ejecuta igual el codigo mientras que error no
as.numeric(c(1,2,3)) 
a=c(1,2,"3")
b=as.numeric(a)
char_vec[5] #nombre del vector y posición del elemento que se quiere coger
char_vec[1:5] #para ubicar varios 
char_vec=char_vec[-5] #para eliminar el elemento en posición 5
#matrices se crean con función matrix
matriz_n = matrix(rnorm(n = 25,mean = 100 ,sd = 10) , nrow = 5, ncol = 5) # Matriz de 5*5
matriz_n # Ver la matriz sobre la consola
view(matriz_n) #para verlo arriba
matriz_n[1,3] #coger el elemento de fila 1 y columna 3
matriz_n[1,] #coger toda la fila 1
matriz_n[,1] #coger toda la columna 1

### Dataframes ###

# generemos un dataframe
nota_numerica = seq(0,10,2) #seq(inicial, final, salto)
nota_numerica
nota_alfabetica = c("a","b","b","a","c","b")
nota_alfabetica
dfm = data.frame(nota_numerica,nota_alfabetica) # Creamos el dataframe - para bases de datos - ambos vectores tienen que tener mismo tamaño
view(dfm) #para verla arriba

dfm[5,2] #para coger elementos es igual a matrices
#listas pueden tener hasta matrices
lista_1=list()
lista_1[[1]]=dfm
lista_1[[2]]=matriz_n
lista_1[[1]][1,]

#importar bases de datos
#insepccionar directorio de trabajo
#.rds para que no pesen tanto las bases de datos
