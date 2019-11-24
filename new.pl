%───────────────▄████████▄────────
%─────────────▄█▀▒▒▒▒▒▒▒▀██▄──────
%───────────▄█▀▒▒▒▒▒▒▒▒▒▒▒██──────
%─────────▄█▀▒▒▒▒▒▒▄▒▒▒▒▒▒▐█▌─────
%────────▄█▒▒▒▒▒▒▒▒▀█▒▒▒▒▒▐█▌─────
%───────▄█▒▒▒▒▒▒▒▒▒▒▀█▒▒▒▄██──────
%──────▄█▒▒▒▒▒▒▒▒▒▒▒▒▀█▒▄█▀█▄─────
%─────▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▒██▀▒▒▒█▄────
%────▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▄───
%───▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▄──
%──▄█▒▒▒▄██████▄▒▒▒▒▄█████▄▒▒▒▒█──			 ______                      __                           
%──█▒▒▒█▀░░░░░▀█─▒▒▒█▀░░░░▀█▒▒▒█──			|      \                    |  \                 
%──█▒▒▒█░░▄░░░░▀████▀░░░▄░░█▒▒▒█──			|$$$$$$$\  ______   ______  | $$   __   ______   __    __ 
%▄███▄▒█▄░▐▀▄░░░░░░░░░▄▀▌░▄█▒▒███▄			|$$  | $$ /      \ |      \ | $$  /  \ /      \ |  \  |  \				
%█▀░░█▄▒█░▐▐▀▀▄▄▄─▄▄▄▀▀▌▌░█▒▒█░░▀█			|$$  | $$|  $$$$$$\|$$$$$$$\| $$_/  $$|  $$$$$$\| $$  | $$
%█░░░░█▒█░▐▐──▄▄─█─▄▄──▌▌░█▒█░░░░█			|$$  | $$| $$  | $$|$$  | $$| $$   $$ | $$    $$| $$  | $$ 
%█░▄░░█▒█░▐▐▄─▀▀─█─▀▀─▄▌▌░█▒█░░▄░█			|$$__/ $$| $$__/ $$|$$  | $$| $$$$$$\ | $$$$$$$$| $$__/ $$
%█░░█░█▒█░░▌▄█▄▄▀─▀▄▄█▄▐░░█▒█░█░░█			|$$    $$ \$$    $$|$$  | $$| $$  \$$\ \$$     \ \$$    $$
%█▄░█████████▀░░▀▄▀░░▀█████████░▄█			\$$$$$$$   \$$$$$$  \$$  \$$ \$$   \$$  \$$$$$$$ _\$$$$$$$
%─██▀░░▄▀░░▀░░▀▄░░░▄▀░░▀░░▀▄░░▀██                                                  			|  \__| $$ 
%██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██                                                  		 \$$    $$ 
%█░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█                                                   		   \$$$$$$ 
%█░▄░░░░░░░░░░░░░░░░░░░░░░░░░░░▄░█
%█░▀█▄░░░░░░░░░░░░░░░░░░░░░░░▄█▀░█             __    __ 
%█░░█▀███████████████████████▀█░░█            |  \  /  \    
%█░░█────█───█───█───█───█────█░░█            | $$ /  $$ 
%█░░▀█───█───█───█───█───█───█▀░░█						 ______   _______    ______  
%█░░░▀█▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄█▀░░░█            | $$/  $$ /      \ |       \  /      \ 
%▀█░░░█──█───█───█───█───█──█░░░█▀            | $$  $$ |  $$$$$$\| $$$$$$$\|  $$$$$$\ 
%─▀█░░▀█▄█───█───█───█───█▄█▀░░█▀─            | $$$$$\ | $$  | $$| $$  | $$| $$  | $$ 
%──▀█░░░▀▀█▄▄█───█───█▄▄█▀▀░░░█▀──            | $$ \$$\| $$__/ $$| $$  | $$| $$__| $$ 
%───▀█░░░░░▀▀█████████▀▀░░░░░█▀───            | $$  \$$\\$$    $$| $$  | $$ \$$    $$ 
%────▀█░░░░░▄░░░░░░░░░▄░░░░░█▀────             \$$   \$$ \$$$$$$  \$$   \$$ _\$$$$$$$ 
%─────▀██▄░░░▀▀▀▀▀▀▀▀▀░░░▄██▀─────                                         |  \__| $$ 
%────────▀██▄▄░░░░░░░▄▄██▀────────                                          \$$    $$ 
%───────────▀▀███████▀▀───────────                                           \$$$$$$ 


% ====================================================== FUNCOES DE MOVIMENTOS =================================================================
% Cima
% Somente onde há uma escada
s([X,Y], [X,Yout],ListaBarris, ListaParedes,ListaEscadas):- Y>0, Yout is Y - 1, pertence([X, Y], ListaEscadas), not(pertence([X, Yout], ListaParedes)).

% Baixo
% Somente se na posição abaixo há uma escada
s([X,Y], [X,Yout],ListaBarris, ListaParedes,ListaEscadas):- Y<4, Yout is Y + 1, pertence([X, Yout], ListaEscadas), not(pertence([X, Yout], ListaParedes)).

% Direita
% Dois casos:
%			1) Caso não haja parede nem barril, anda uma unidade
%			2) Caso haja um barril, anda duas unidades se não houver parede ou outro barril
s([X,Y], [Xout,Y],ListaBarris, ListaParedes,ListaEscadas):- X<9, Xout is X + 1, not(pertence([Xout, Y], ListaParedes)), not(pertence([Xout, Y], ListaBarris)).
s([X,Y], [Xout,Y],ListaBarris, ListaParedes,ListaEscadas):- X<8, Xout is X + 2, Xmid is X+1, not(pertence([Xout, Y], ListaParedes)), not(pertence([Xout, Y], ListaBarris)), pertence([Xmid, Y], ListaBarris).

% Esquerda
% Dois casos:
%			1) Caso não haja parede nem barril, anda uma unidade
%			2) Caso haja um barril, anda duas unidades se não houver parede ou outro barril
s([X,Y], [Xout,Y],ListaBarris, ListaParedes,ListaEscadas):- X>0, Xout is X - 1, not(pertence([Xout, Y], ListaParedes)), not(pertence([Xout, Y], ListaBarris)).
s([X,Y], [Xout,Y],ListaBarris, ListaParedes,ListaEscadas):- X>1, Xout is X - 2, Xmid is X-1, not(pertence([Xout, Y], ListaParedes)), not(pertence([Xout, Y], ListaBarris)), pertence([Xmid, Y], ListaBarris).
% ====================================================== FUNCOES DE MOVIMENTOS =================================================================



% ============================================== FUNCOES BASICAS DE MANIPULAÇÃO DE LISTA ======================================================
% Decompor a lista
cons(X,Y,[X|Y]).

% Inverter lista
inverte([],[]).
inverte([E|C], Linv):- inverte(C,C_Inv), concatena(C_Inv,[E], Linv).

% Concatena duas listas
concatena([],L,L).
concatena([H|T],L2,[H|T2]) :- concatena(T,L2,T2).

meta(X, Y) :- X = Y.

% Verififcar se um elemento esta na lista
pertence(E, [E|_]).
pertence(E, [_|Cauda]):- pertence(E, Cauda).
% ============================================== FUNCOES BASICAS DE MANIPULAÇÃO DE LISTA ======================================================


% ==================================================== BUSCA EVOLUTIVA ======================================================
estende([Estado|Caminho],ListaSucessores,ListaBarris, ListaParedes,ListaEscadas):- bagof([Sucessor,Estado|Caminho], (s(Estado,Sucessor,ListaBarris,ListaParedes,ListaEscadas), not(pertence(Sucessor,[Estado|Caminho]))), ListaSucessores),!.
estende( _ ,[], _, _, _). 

bl([[Estado|Caminho]|_],ListaBarris, ListaParedes,ListaEscadas,Objetivo, [Estado|Caminho]) :- meta(Estado, Objetivo).
bl([Primeiro|Outros],ListaBarris, ListaParedes,ListaEscadas,Objetivo, Solucao) :-
	estende(Primeiro,Sucessores,ListaBarris, ListaParedes, ListaEscadas),
	concatena(Outros,Sucessores,NovaFronteira),
	bl(NovaFronteira,ListaBarris,ListaParedes,ListaEscadas,Objetivo, Solucao).
% ==================================================== BUSCA EVOLUTIVA ======================================================


solucao_bl(PosicaoInicial,ListaBarris,ListaParedes,ListaEscadas, Objetivo, Solucao) :- bl([[PosicaoInicial]],ListaBarris, ListaParedes,ListaEscadas,Objetivo, Solucao).


% Funcao principal - 
% Paremetros: posição inicial da busca
%             lista de barris 
%			  lista de paredes
%             lista de escadas
%             posicao do martelo para matar o donkey kong
%             variavel para receber o caminho percorrido

% A Princesa Peach e o Donkey Kong se encontram no último andar e última linha em todos os casos de teste
main(PosicaoInicial, ListaBarris, ListaParedes, ListaEscadas, PosicaoMartelo, S) :-
	solucao_bl(PosicaoInicial,ListaBarris,ListaParedes,ListaEscadas, PosicaoMartelo, S2),
	cons(X, Y, S2),
	solucao_bl(X, ListaBarris,ListaParedes,ListaEscadas, [9, 0], S3),
	concatena(S3, Y, S4),
	inverte(S4, S).