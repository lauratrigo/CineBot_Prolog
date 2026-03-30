:- include(base_dados).

cinebot :-
    write('Bem-vindo ao CineBot!'), nl,
    write('Digite seu nome: '),
    read(NomeUsuario),
    write('Ola, '), write(NomeUsuario), nl,
    menu(NomeUsuario).

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
    read(Genero),
    write('Escolha o tempo de duracao:'), nl,
    write('1 - Ate 110 minutos'), nl,
    write('2 - Mais de 110 minutos'), nl,
    read(Duracao),
    buscar_filmes(Genero, Duracao, NomeUsuario).

buscar_filmes(Genero, 1, NomeUsuario) :-
    findall(
        filme(Genero, NomeFilme, DuracaoFilme, Ano, Diretor, Sinopse),
        (filme(Genero, NomeFilme, DuracaoFilme, Ano, Diretor, Sinopse), DuracaoFilme =< 110),
        Lista
    ),
    mostrar_lista(Lista, NomeUsuario).

buscar_filmes(Genero, 2, NomeUsuario) :-
    findall(
        filme(Genero, NomeFilme, DuracaoFilme, Ano, Diretor, Sinopse),
        (filme(Genero, NomeFilme, DuracaoFilme, Ano, Diretor, Sinopse), DuracaoFilme > 110),
        Lista
    ),
    mostrar_lista(Lista, NomeUsuario).

mostrar_lista([], _) :-
    write('Nao tem mais filmes nessa categoria'), nl.

mostrar_lista([filme(Genero, NomeFilme, DuracaoFilme, Ano, Diretor, Sinopse)|Resto], NomeUsuario) :-
    mostrar(filme(Genero, NomeFilme, DuracaoFilme, Ano, Diretor, Sinopse), NomeUsuario),
    write('Gostaria de outra sugestao? (sim ou nao)'), nl,
    read(Resposta),
    (
        Resposta == sim -> mostrar_lista(Resto, NomeUsuario)
      ; Resposta == nao -> write('Bom filme!'), nl
      ; write('Resposta invalida'), nl
    ).

mostrar(filme(_, NomeFilme, Duracao, Ano, Diretor, Sinopse), NomeUsuario) :-
    nl,
    format('Filme recomendado para voce, ~w:~n', [NomeUsuario]),
    format('Nome: ~w~n', [NomeFilme]),
    format('Duracao: ~w minutos~n', [Duracao]),
    format('Ano: ~w~n', [Ano]),
    format('Diretor: ~w~n', [Diretor]),
    format('Sinopse: ~w~n', [Sinopse]).