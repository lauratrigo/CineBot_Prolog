% base de dados

% primeira seção - opções de gênero
opcao_genero(1).
opcao_genero(2).
opcao_genero(3).
opcao_genero(4).
opcao_genero(5).
opcao_genero(6).
opcao_genero(7).
opcao_genero(8).
opcao_genero(9).
opcao_genero(10).

resposta_sim(sim).
resposta_sim(s).
resposta_nao(nao).
resposta_nao(n).

% nome dos gêneros
nome_genero(1, 'Acao').
nome_genero(2, 'Comedia').
nome_genero(3, 'Drama').
nome_genero(4, 'Romance').
nome_genero(5, 'Terror').
nome_genero(6, 'Classico').
nome_genero(7, 'Ficcao Cientifica').
nome_genero(8, 'Animacao').
nome_genero(9, 'Suspense').
nome_genero(10, 'Aventura').


% segunda seção - divisão dos filmes por gêneros, os dados da estrutura deles
% seguem o seguinte formato filme(Gênero, Nome, Duração, Ano, Diretor)

% filmes de ação
filme(1, 'Mad Max', 88, 1979, 'George Miller').
filme(1, 'John Wick', 101, 2014, 'Chad Stahelski').
filme(1, 'Duro de Matar', 132, 1988, 'John McTiernan').
filme(1, 'Top Gun - Ases Indomaveis', 110, 1986, 'Tony Scott').
filme(1, 'A Origem', 148, 2010, 'Christopher Nolan').
filme(1, 'Scarface', 170, 1983, 'Brian De Palma').

% filmes de comédia
filme(2, 'Apertem os Cintos... O Piloto Sumiu!', 88, 1980, 'Jim Abrahams').
filme(2, 'Superbad: E Hoje', 113, 2007, 'Greg Mottola').
filme(2, 'Clube dos 5', 97, 1985, 'John Hughes').
filme(2, 'Os Fantasmas Se Divertem', 92, 1990, 'Tim Burton').
filme(2, 'O Fabuloso Destino de Amelie Poulain', 122, 2001, 'Jean-Pierre Jeunet').
filme(2, 'Scott Pilgrim contra o Mundo', 112, 2010, 'Edgar Wright').

% filmes de drama
filme(3, '12 Homens e uma Sentenca', 96, 1957, 'Sidney Lumet').
filme(3, 'O Poderoso Chefao', 175, 1972, 'Francis Ford Coppola').
filme(3, 'Forrest Gump', 142, 1994, 'Robert Zemeckis').
filme(3, 'Clube da Luta', 139, 1999, 'David Fincher').
filme(3, 'Ela', 126, 2013, 'Spike Jonze').
filme(3, 'Taxi Driver', 114, 1976, 'Martin Scorsese').

% filmes de romance
filme(4, 'Antes do Por-do-Sol', 80, 2004, 'Richard Linklater').
filme(4, 'Casablanca', 102, 1942, 'Michael Curtiz').
filme(4, 'La La Land', 128, 2016, 'Damien Chazelle').
filme(4, 'Dirty Dancing', 100, 1987, 'Emile Ardolino').
filme(4, 'Um Lugar Chamado Notting Hill', 124, 1999, 'Roger Michell').
filme(4, 'Uma Linda Mulher', 119, 1990, 'Garry Marshall').

% filmes de terror
filme(5, 'A Casa dos Maus Espiritos', 75, 1959, 'William Castle').
filme(5, 'Que Aconteceu com Baby Jane?', 134, 1962, 'Robert Aldrich').
filme(5, 'O Iluminado', 146, 1980, 'Stanley Kubrick').
filme(5, 'O Exorcista', 122, 1973, 'William Friedkin').
filme(5, 'Psicopata Americano', 102, 2000, 'Mary Harron').
filme(5, 'O Silencio dos Inocentes', 118, 1991, 'Jonathan Demme').

% filmes clássicos
filme(6, 'Crepusculo dos Deuses', 110, 1950, 'Billy Wilder').
filme(6, 'E o Vento Levou', 238, 1939, 'Victor Fleming').
filme(6, 'Cantando na Chuva', 103, 1952, 'Stanley Donen').
filme(6, 'Janela Indiscreta', 112, 1954, 'Alfred Hitchcock').
filme(6, 'Cidadao Kane', 119, 1941, 'Orson Welles').
filme(6, 'Gata em Teto de Zinco Quente', 108, 1958, 'Richard Brooks').

% filmes de ficção científica
filme(7, 'Matrix', 136, 1999, 'Lana e Lilly Wachowski').
filme(7, 'Interestelar', 169, 2014, 'Christopher Nolan').
filme(7, 'Blade Runner', 117, 1982, 'Ridley Scott').
filme(7, 'Alien', 117, 1979, 'Ridley Scott').
filme(7, 'Coerencia', 89, 2013, 'James Ward Byrkit').
filme(7, '2001: Uma Odisseia no Espaco', 149, 1968, 'Stanley Kubrick').

% filmes de animação
filme(8, 'Toy Story', 81, 1995, 'John Lasseter').
filme(8, 'Shrek', 90, 2001, 'Andrew Adamson e Vicky Jenson').
filme(8, 'Procurando Nemo', 100, 2003, 'Andrew Stanton').
filme(8, 'Up: Altas Aventuras', 96, 2009, 'Pete Docter').
filme(8, 'A Viagem de Chihiro', 125, 2001, 'Hayao Miyazaki').
filme(8, 'Wall-E', 98, 2008, 'Andrew Stanton').

% filmes de suspense
filme(9, 'Psicose', 109, 1960, 'Alfred Hitchcock').
filme(9, 'Garota Exemplar', 149, 2014, 'David Fincher').
filme(9, 'Ilha do Medo', 138, 2010, 'Martin Scorsese').
filme(9, 'Seven: Os Sete Crimes Capitais', 127, 1995, 'David Fincher').
filme(9, 'Os Suspeitos', 153, 2013, 'Denis Villeneuve').
filme(9, 'Zodiaco', 157, 2007, 'David Fincher').

% filmes de aventura
filme(10, 'Indiana Jones e os Cacadores da Arca Perdida', 115, 1981, 'Steven Spielberg').
filme(10, 'Jurassic Park', 127, 1993, 'Steven Spielberg').
filme(10, 'Piratas do Caribe: A Maldicao do Perola Negra', 143, 2003, 'Gore Verbinski').
filme(10, 'O Senhor dos Aneis: A Sociedade do Anel', 178, 2001, 'Peter Jackson').
filme(10, 'Harry Potter e a Pedra Filosofal', 152, 2001, 'Chris Columbus').
filme(10, 'Jumanji', 104, 1995, 'Joe Johnston').

% terceira seção - sinopses dos filmes

% filmes de ação
sinopse('Mad Max', 'Em um futuro caotico, um policial busca vinganca contra uma gangue violenta.').
sinopse('John Wick', 'Um ex-assassino volta a ativa para se vingar de criminosos.').
sinopse('Duro de Matar', 'Um policial enfrenta terroristas sozinho em um predio.').
sinopse('Top Gun - Ases Indomaveis', 'Um piloto talentoso enfrenta desafios no programa de elite da marinha.').
sinopse('A Origem', 'Um ladrao invade sonhos para roubar segredos, mas enfrenta perigos internos.').
sinopse('Scarface', 'Um imigrante sobe no mundo do crime em busca de poder e riqueza.').

% filmes de comédia
sinopse('Apertem os Cintos... O Piloto Sumiu!', 'Uma parodia de filmes de desastre aereo.').
sinopse('Superbad: E Hoje', 'Dois adolescentes se metem em varias confusoes antes de uma festa.').
sinopse('Clube dos 5', 'Cinco estudantes de diferentes classes sociais passam um sabado de detencao juntos.').
sinopse('Os Fantasmas Se Divertem', 'Um casal de fantasmas tenta assustar os novos moradores de sua casa.').
sinopse('O Fabuloso Destino de Amelie Poulain', 'Uma jovem decide ajudar pessoas anonimas de formas inesperadas.').
sinopse('Scott Pilgrim contra o Mundo', 'Um jovem deve derrotar os sete ex-namorados malvados de sua amada.').

% filmes de drama
sinopse('12 Homens e uma Sentenca', 'Um jurado tenta convencer os outros de que ha duvida no caso.').
sinopse('O Poderoso Chefao', 'A historia de uma poderosa familia mafiosa.').
sinopse('Forrest Gump', 'Um homem simples atravessa momentos marcantes da historia americana.').
sinopse('Clube da Luta', 'Um homem insatisfeito cria uma relacao perigosa com um estranho carismatico.').
sinopse('Ela', 'Um homem se apaixona por um sistema operacional com inteligencia artificial.').
sinopse('Taxi Driver', 'Um motorista solitario e perturbado observa a decadencia de Nova York.').

% filmes de romance
sinopse('Antes do Por-do-Sol', 'Dois antigos apaixonados se reencontram anos depois.').
sinopse('Casablanca', 'Um amor do passado ressurge em meio a guerra.').
sinopse('La La Land', 'Dois artistas se apaixonam enquanto perseguem seus sonhos.').
sinopse('Dirty Dancing', 'Uma jovem se apaixona pelo instrutor de danca durante as ferias de verao.').
sinopse('Um Lugar Chamado Notting Hill', 'Um livreiros comum se apaixona por uma atriz famosa.').
sinopse('Uma Linda Mulher', 'Um homem rico se apaixona por uma mulher de programa e muda sua vida.').

% filmes de terror
sinopse('A Casa dos Maus Espiritos', 'Pessoas passam uma noite em uma mansao mal-assombrada.').
sinopse('Que Aconteceu com Baby Jane?', 'Uma ex-estrela mirim atormenta sua irma em uma mansao decadente.').
sinopse('O Iluminado', 'Um homem enlouquece isolado em um hotel sombrio.').
sinopse('O Exorcista', 'Uma garota passa a apresentar sinais de possessao demoniaca.').
sinopse('Psicopata Americano', 'Um executivo de dia e assassino em serie a noite.').
sinopse('O Silencio dos Inocentes', 'Uma jovem agente do FBI busca ajuda de um canibal para capturar outro assassino.').

% filmes clássicos
sinopse('Crepusculo dos Deuses', 'Uma estrela do cinema mudo vive presa ao passado.').
sinopse('E o Vento Levou', 'Um romance epico durante a Guerra Civil Americana.').
sinopse('Cantando na Chuva', 'Astros de Hollywood enfrentam a chegada do cinema falado.').
sinopse('Janela Indiscreta', 'Um fotografo suspeita ter presenciado um crime.').
sinopse('Cidadao Kane', 'A vida de um magnata da imprensa e reconstruida apos sua morte.').
sinopse('Gata em Teto de Zinco Quente', 'Uma familia enfrenta tensoes e segredos em um jantar.').

% filmes de ficção científica
sinopse('Matrix', 'Um hacker descobre que a realidade e uma simulacao.').
sinopse('Interestelar', 'Astronautas buscam um novo lar para a humanidade.').
sinopse('Blade Runner', 'Um cacador de androides investiga seres artificiais rebeldes.').
sinopse('Alien', 'A tripulacao de uma nave enfrenta uma criatura mortal.').
sinopse('Coherence', 'Durante um jantar, eventos estranhos alteram a realidade dos convidados.').
sinopse('2001: Uma Odisseia no Espaco', 'Astronautas enfrentam desafios misteriosos durante uma viagem ao espaco profundo.').

% filmes de animação
sinopse('Toy Story', 'Brinquedos ganham vida quando nao ha humanos por perto.').
sinopse('Shrek', 'Um ogro embarca em uma aventura para salvar uma princesa.').
sinopse('Procurando Nemo', 'Um peixe atravessa o oceano para encontrar o filho desaparecido.').
sinopse('Up: Altas Aventuras', 'Um idoso realiza o sonho de viajar em uma casa levada por baloes.').
sinopse('A Viagem de Chihiro', 'Uma garota atravessa um mundo magico para salvar seus pais.').
sinopse('Wall-E', 'Um robo solitario encontra uma nova missao na Terra.').

% filmes de suspense
sinopse('Psicose', 'Uma mulher em fuga encontra um motel sinistro.').
sinopse('Garota Exemplar', 'O desaparecimento de uma mulher revela segredos de um casamento.').
sinopse('Ilha do Medo', 'Um investigador vai a uma ilha onde funciona um hospital psiquiatrico.').
sinopse('Seven: Os Sete Crimes Capitais', 'Dois detectives investigam crimes ligados aos sete pecados capitais.').
sinopse('Os Suspeitos', 'O desaparecimento de meninas leva um pai ao desespero.').
sinopse('Zodiaco', 'Jornalistas e policiais tentam descobrir a identidade de um serial killer.').

% filmes de aventura
sinopse('Indiana Jones e os Cacadores da Arca Perdida', 'Um arqueologo aventureiro procura um artefato lendario.').
sinopse('Jurassic Park', 'Dinossauros clonados escapam do controle em um parque.').
sinopse('Piratas do Caribe: A Maldicao do Perola Negra', 'Piratas e maldicoes em uma aventura no mar.').
sinopse('O Senhor dos Aneis: A Sociedade do Anel', 'Um grupo inicia uma jornada para destruir um anel poderoso.').
sinopse('Harry Potter e a Pedra Filosofal', 'Um menino descobre que e bruxo e entra em uma escola de magia.').
sinopse('Jumanji', 'Um jogo misterioso traz perigos da selva para o mundo real.').