%cima
s([X,Y], [X,Yout],ListaBarris, ListaParedes,ListaEscadas):- Y>0, Yout is Y - 1, pertence([X, Y], ListaEscadas), not(pertence([X, Yout], ListaParedes)).
%baixo
s([X,Y], [X,Yout],ListaBarris, ListaParedes,ListaEscadas):- Y<4, Yout is Y + 1, pertence([X, Yout], ListaEscadas), not(pertence([X, Yout], ListaParedes)).
%direita
s([X,Y], [Xout,Y],ListaBarris, ListaParedes,ListaEscadas):- X<9, Xout is X + 1, not(pertence([Xout, Y], ListaParedes)), not(pertence([Xout, Y], ListaBarris)).
s([X,Y], [Xout,Y],ListaBarris, ListaParedes,ListaEscadas):- X<8, Xout is X + 2, Xmid is X+1, not(pertence([Xout, Y], ListaParedes)), not(pertence([Xout, Y], ListaBarris)), pertence([Xmid, Y], ListaBarris).
%esquerda
s([X,Y], [Xout,Y],ListaBarris, ListaParedes,ListaEscadas):- X>0, Xout is X - 1, not(pertence([Xout, Y], ListaParedes)), not(pertence([Xout, Y], ListaBarris)).
s([X,Y], [Xout,Y],ListaBarris, ListaParedes,ListaEscadas):- X>1, Xout is X - 2, Xmid is X-1, not(pertence([Xout, Y], ListaParedes)), not(pertence([Xout, Y], ListaBarris)), pertence([Xmid, Y], ListaBarris).



% inverter lista
inverte([],[]).
inverte([E|C], Linv):- inverte(C,C_Inv), concatena(C_Inv,[E], Linv).

%Concatena duas listas
concatena([],L,L).
concatena([H|T],L2,[H|T2]) :- concatena(T,L2,T2).

meta(X) :- X = [9,0].

%verififcar se um elemento esta na lista
pertence(E, [E|_]).
pertence(E, [_|Cauda]):- pertence(E, Cauda).

estende([Estado|Caminho],ListaSucessores,ListaBarris, ListaParedes,ListaEscadas):- bagof([Sucessor,Estado|Caminho], (s(Estado,Sucessor,ListaBarris,ListaParedes,ListaEscadas), not(pertence(Sucessor,[Estado|Caminho]))), ListaSucessores),!.
estende( _ ,[], _, _, _). 

solucao_bl(PosicaoInicial,ListaBarris,ListaParedes,ListaEscadas, Solucao) :- bl([[PosicaoInicial]],ListaBarris, ListaParedes,ListaEscadas, Solucao).
bl([[Estado|Caminho]|_],ListaBarris, ListaParedes,ListaEscadas, [Estado|Caminho]) :- meta(Estado).
bl([Primeiro|Outros],ListaBarris, ListaParedes,ListaEscadas, Solucao) :- estende(Primeiro,Sucessores,ListaBarris, ListaParedes, ListaEscadas),
concatena(Outros,Sucessores,NovaFronteira),
bl(NovaFronteira,ListaBarris,ListaParedes,ListaEscadas, Solucao).



main(PosicaoInicial, ListaBarris, ListaParedes, ListaEscadas, S) :- solucao_bl(PosicaoInicial,ListaBarris,ListaParedes,ListaEscadas, S2), inverte(S2, S).