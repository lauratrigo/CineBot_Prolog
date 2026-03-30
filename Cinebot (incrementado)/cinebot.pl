:- include(base_dados).

% introdução do usuário ao chatbot
cinebot :-
    nl, write('Bem-vindo ao CineBot'), nl,
    write('Vou te ajudar a escolher um filme.'), nl,
    write('Digite seu nome entre aspas e com ponto final.'), nl,
    write('Exemplo: ''Nome''.'), nl,
    read(Nome),
    nl, format('Bem-vindo(a), ~w!~n', [Nome]),
    menu_principal(Nome).

% apresenta o menu ao usuário
mostrar_menu_generos :-
    nl,
    write('1 - Acao'), nl,
    write('2 - Comedia'), nl,
    write('3 - Drama'), nl,
    write('4 - Romance'), nl,
    write('5 - Terror'), nl,
    write('6 - Classico'), nl,
    write('7 - Ficcao Cientifica'), nl,
    write('8 - Animacao'), nl,
    write('9 - Suspense'), nl,
    write('10 - Aventura'), nl.


% função que pergunta ao usuário o gênero, tempo total desejado e processa a busca de filmes
menu_principal(Nome) :-
    escolher_genero(Genero),
    escolher_tempo(MaxMinutos),
    processar_busca(Genero, MaxMinutos, Nome).

% processa a busca de filmes compatíveis
processar_busca(Genero, MaxMinutos, Nome) :-
    findall((Filme, Duracao, Ano, Diretor),
            filme_compativel(Genero, MaxMinutos, Filme, Duracao, Ano, Diretor),
            Lista),
    (
        Lista \= [] % se por acaso encontrou algum filme, cria essa lista
        -> ordenar_por_diferenca(MaxMinutos, Lista, ListaOrdenada),
           mostrar_resultados(Genero, MaxMinutos, Nome, ListaOrdenada)
        ;  tratar_sem_resultado(Genero, MaxMinutos, Nome)
    ).

% funções que ordenam os filmes por duração dos filmes na base de dados e o tempo desejado
% inserido pelo usuário
ordenar_por_diferenca(MaxMinutos, Lista, ListaOrdenada) :-
    predsort(comparar_diferenca(MaxMinutos), Lista, ListaOrdenada).

comparar_diferenca(MaxMinutos, Comp, (_, Duracao1, _, _), (_, Duracao2, _, _)) :-
    Dif1 is abs(Duracao1 - MaxMinutos),
    Dif2 is abs(Duracao2 - MaxMinutos),
    compare(Comp, Dif1, Dif2).

% ordena os filmes pelo tempo mais próximo desejado pelo usuário
sort_by_time_difference(MaxMinutos, Lista, ListaOrdenada) :-
    map_list_to_pairs(time_difference(MaxMinutos), Lista, ListaComDiferencas),
    keysort(ListaComDiferencas, ListaOrdenada).

time_difference(MaxMinutos, (Filme, Duracao, Ano, Diretor), (Dif, Filme, Duracao, Ano, Diretor)) :-
    Dif is abs(Duracao - MaxMinutos).

% função para perguntar ao usuário qual gênero ele prefere
escolher_genero(Genero) :-
    repeat,
    nl, write('Qual genero voce prefere?'), nl,
    mostrar_menu_generos,
    write('Digite o numero do genero '),
    flush_output,  
    read(Genero),
    ( opcao_genero(Genero)
    -> !  % caso a opção seja válida, irá sair do repeat e ir para o próximo passo
    ;  write('Opcao invalida. Escolha um numero de 1 a 10'), nl,
       fail
    ).

% função para o usuário escolher a duração de tempo desejada
escolher_tempo(MaxMinutos) :-
    repeat,
    nl, write('Digite a duracao de tempo desejada do filme (em minutos)'), nl,
    write('Exemplo: 90, 120, 150, 200...'), nl,
    write('Tempo desejado '),
    flush_output,
    read(Tempo),
    ( integer(Tempo), Tempo > 0
    ->  exibir_horas_e_minutos(Tempo), 
        MaxMinutos = Tempo,
        !   % para parar o repeat
    ;  write('Valor invalido. Digite um numero inteiro positivo.'), nl,
       fail
    ).

% verifica se existem filmes compatíveis com base no gênero e duração de tempo inseridos pelo usuário
% ainda há uma condição para encontrar filmes que tenham até 30 minutos a mais ou a menos do que o usuário
% digitou, se por acaso não encontrar um filme com a duração idêntica
filme_compativel(Genero, MaxMinutos, Filme, Duracao, Ano, Diretor) :-
    filme(Genero, Filme, Duracao, Ano, Diretor),
    Duracao >= MaxMinutos - 30,  % Tolerância de 30 minutos para menos
    Duracao =< MaxMinutos + 30.   % Tolerância de 30 minutos para mais

% função que converte os minutos inseridos pelo usuário para horas
exibir_horas_e_minutos(Minutos) :-
    Horas is Minutos // 60,
    Restante is Minutos mod 60,
    format('O tempo desejado em minutos equivale a ~w hora(s) e ~w minuto(s).~n', [Horas, Restante]).

% função para mostrar os resultados encontrados e interagir com o usuário
mostrar_resultados(Genero, MaxMinutos, Nome, Lista) :-
    nome_genero(Genero, NomeGenero),
    nl, format('Resultado para a busca ~w~n', [Nome]),
    format('Genero escolhido: ~w~n', [NomeGenero]),
    format('Tempo maximo escolhido: ~w minutos~n~n', [MaxMinutos]),
    write('Encontrei estas sugestoes para voce:'), nl, nl,
    exibir_horas_e_minutos(MaxMinutos), 
    interagir_filmes(Lista, Nome).

% se por acaso o usuário desejar mais indicações do mesmo gênero e tempo de duração, mas por acaso
% o programa não encontrar
interagir_filmes([], Nome) :-
    nl, write('Nao encontrei mais sugestoes com esse genero e esse tempo'), nl,
    write('Voce pode fazer uma nova busca para encontrar outros filmes'), nl,
    perguntar_nova_busca(Nome).

% printa informações sobre o filme ao usuário
interagir_filmes([(Filme, Duracao, Ano, Diretor)|Resto], Nome) :-
    sinopse(Filme, Sinopse),
    format('Filme: ~w~n', [Filme]),
    format('Duracao: ~w minutos~n', [Duracao]),
    format('Sinopse: ~w~n', [Sinopse]),
    perguntar_detalhes(Ano, Diretor),
    perguntar_mais_dicas(Resto, Nome).

% pergunta ao usuário se ele gostaria de saber mais detalhes sobre o filme, como ano de lançamento e nome
% do diretor
perguntar_detalhes(Ano, Diretor) :-
    nl, write('Voce gostaria de saber mais detalhes desse filme? (sim. / nao.) '),
    flush_output,
    read(Resp),
    (
        resposta_sim(Resp)
        -> format('Ano de lancamento: ~w~n', [Ano]),
           format('Diretor(a): ~w~n', [Diretor])
        ;  resposta_nao(Resp)
        -> true
        ;  write('Resposta invalida. Seguindo para a proxima etapa'), nl
    ).

% pergunta ao usuário se por acaso, ele deseja mais indicações de filmes
perguntar_mais_dicas(Resto, Nome) :-
    nl, write('Voce gostaria de mais uma dica de filme? (sim. / nao.) '),
    flush_output,  
    read(Resp),
    (
        resposta_sim(Resp)
        -> nl, interagir_filmes(Resto, Nome)
        ;  resposta_nao(Resp)
        -> nl, perguntar_nova_busca(Nome)
        ;  nl, write('Resposta invalida. Seguindo para uma nova busca'), nl,
           perguntar_nova_busca(Nome)
    ).
          
% função que trata se por acaso não encontrar nenhum filme compatível
tratar_sem_resultado(Genero, MaxMinutos, Nome) :-
    nome_genero(Genero, NomeGenero),
    nl, format('Desculpe, ~w.~n', [Nome]),
    format('Nao encontrei filmes do genero ~w com ate ~w minutos.~n', [NomeGenero, MaxMinutos]),
    nl, write('Voce gostaria de tentar uma nova busca com outro genero ou outro tempo? (sim. / nao.) '),
    flush_output, 
    read(Resp),
    (
        resposta_sim(Resp)
        -> menu_principal(Nome)
        ;  resposta_nao(Resp)
        -> nl, write('Tudo bem. Bom filme! Aproveite'), nl
        ;  nl, write('Resposta invalida. Encerrando. Bom filme!'), nl
    ).

% pergunta ao usuário se ele deseja realizar uma nova busca com novo gênero e tempo de duração
perguntar_nova_busca(Nome) :-
    nl, write('Voce gostaria de fazer uma nova busca? (sim. / nao.) '),
    flush_output,  
    read(Resp),
    (
        resposta_sim(Resp)
        -> nl, menu_principal(Nome)
        ;  resposta_nao(Resp)
        -> nl, write('Bom filme! Aproveite'), nl
        ;  nl, write('Resposta invalida. Encerrando. Bom filme!'), nl
    ).