capital(inglaterra, londres).
capital(francia, paris).
empresa(inglaterra, siemens).
empresa(francia, siemens).
central(siemens, paris).
central(siemens, londres).
ventas(siemens,10001).
grande(X):- capital(X,C), empresa(X,Y), central(Y,C), ventas(Y,V), V>10000.
%Incorrecto porque no deja buscar otras empresas
grande1(X):- capital(X,C), empresa(X,Y), central(Y,C), !, ventas(Y,V), V>10000.
%Correcto
grande2(X):- capital(X,C), !, empresa(X,Y), central(Y,C), ventas(Y,V), V>10000.
