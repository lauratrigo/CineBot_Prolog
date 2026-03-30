:- include(base_dados). % chama a base de dados

% inicia o cinebot, pergunta o nome do usuário e chama o menu
cinebot :-
    write('Bem-vindo ao CineBot!'), nl,
    write('Digite seu nome: '),
    read(NomeUsuario),
    write('Ola, '), write(NomeUsuario), nl,
    menu(NomeUsuario).

% menu principal que lista todas as opções de gênero para o usuário escolher
menu(NomeUsuario) :-
    write('Escolha um genero:'), nl,
    write('1 - Acao'), nl,
    write('2 - Comedia'), nl,
    write('3 - Drama'), nl,
    write('4 - Romance'), nl,
    write('5 - Terror'), nl,
    write('6 - Classico'), nl,
    write('7 - Ficcao Cientifica'), nl,
    write('8 - Animacao'), nl,
    write('9 - Suspense'), nl,
    write('10 - Aventura'), nl,
    read(Genero),   % lê a opção de gênero que o usuário escolheu

% depois de escolher o gênero, o programa pergunta para usuário qual tempo de duração ele prefere
    write('Escolha o tempo de duracao:'), nl,
    write('1 - Ate 110 minutos'), nl,
    write('2 - Mais de 110 minutos'), nl,
    read(Duracao),   % lê a opção de duração que o usuário escolheu

    buscar_filmes(Genero, Duracao, NomeUsuario).   % chama a função que busca os filmes com base nas opções do usuário

% função de busca de filmes (gera Lista e chama mostrar um por um)
buscar_filmes(Genero, 1, NomeUsuario) :-
    % busca todos os filmes e depois filtra pelo gênero escolhido com duração até 110 minutos e armazena em Lista
    findall(
        filme(Genero, NomeFilme, DuracaoFilme, Ano, Diretor, Sinopse),
        (filme(Genero, NomeFilme, DuracaoFilme, Ano, Diretor, Sinopse), DuracaoFilme =< 110),
        Lista
    ),
    mostrar_lista(Lista, NomeUsuario). % chama a função que mostra os filmes um por um para o usuário

% faz basicamente a mesma coisa que a função anterior, mas filtra por duração maior que 110 minutos
buscar_filmes(Genero, 2, NomeUsuario) :-
    findall(
        filme(Genero, NomeFilme, DuracaoFilme, Ano, Diretor, Sinopse),
        (filme(Genero, NomeFilme, DuracaoFilme, Ano, Diretor, Sinopse), DuracaoFilme > 110),
        Lista
    ),
    mostrar_lista(Lista, NomeUsuario). % chama a função que mostra os filmes um por um para o usuário

% função recursiva que mostra os filmes um por um, caso não encontre nenhuma opção válida, printa essa mensagem 
% para o usuário e encerra o programa
mostrar_lista([], _) :-    % [] quando a lista estiver vazia = sem filmes para mostrar e _ serve como variável anônima, ou seja, não importa o nome do usuário nesse caso
    write('Nao tem mais filmes nessa categoria'), nl.

% função que chama a outra função que mostra os detalhes do filme e pergunta se o usuário quer outra 
% sugestão, caso sim, chama a função novamente para mostrar o próximo filme da lista, caso não, encerra 
% o programa
mostrar_lista([filme(Genero, NomeFilme, DuracaoFilme, Ano, Diretor, Sinopse)|Resto], NomeUsuario) :-
    mostrar(filme(Genero, NomeFilme, DuracaoFilme, Ano, Diretor, Sinopse), NomeUsuario),
    write('Gostaria de outra sugestao? (sim ou nao)'), nl,
    read(Resposta),
    (
        % condicional que verifica, caso a resposta seja sim, chama a função novamente para mostrar o próximo filme da lista
        % caso a resposta seja não, printa uma mensagem de bom film, encerra o programa e caso a resposta seja inválida, 
        % printa uma mensagem de resposta inválida e encerra o programa
        Resposta == sim -> mostrar_lista(Resto, NomeUsuario) 
      ; Resposta == nao -> write('Bom filme!'), nl
      ; write('Resposta invalida'), nl
    ).

% função que mostra os detalhes do filme para o usuário, com base nas informações armazenadas na base de dados
mostrar(filme(_, NomeFilme, Duracao, Ano, Diretor, Sinopse), NomeUsuario) :-
    nl,
    format('Filme recomendado para voce, ~w:~n', [NomeUsuario]),
    format('Nome: ~w~n', [NomeFilme]),
    format('Duracao: ~w minutos~n', [Duracao]),
    format('Ano: ~w~n', [Ano]),
    format('Diretor: ~w~n', [Diretor]),
    format('Sinopse: ~w~n', [Sinopse]).  