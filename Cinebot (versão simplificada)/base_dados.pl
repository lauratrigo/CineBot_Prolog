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
resposta_nao(nao).

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
% seguem o seguinte formato filme(Gênero, Nome, Duração, Ano, Diretor, Sinopse)

% filmes de ação
filme(1, 'Mad Max', 88, 1979, 'George Miller', 'Em um futuro caotico, um policial busca vinganca contra uma gangue violenta.').
filme(1, 'John Wick', 101, 2014, 'Chad Stahelski', 'Um ex-assassino volta a ativa para se vingar de criminosos.').
filme(1, 'Duro de Matar', 132, 1988, 'John McTiernan', 'Um policial enfrenta terroristas sozinho em um predio.').
filme(1, 'Top Gun - Ases Indomaveis', 110, 1986, 'Tony Scott', 'Um piloto talentoso enfrenta desafios no programa de elite da marinha.').
filme(1, 'A Origem', 148, 2010, 'Christopher Nolan', 'Um ladrao invade sonhos para roubar segredos, mas enfrenta perigos internos.').
filme(1, 'Scarface', 170, 1983, 'Brian De Palma', 'Um imigrante sobe no mundo do crime em busca de poder e riqueza.').

% filmes de comédia
filme(2, 'Apertem os Cintos... O Piloto Sumiu!', 88, 1980, 'Jim Abrahams', 'Uma parodia de filmes de desastre aereo.').
filme(2, 'Superbad: E Hoje', 113, 2007, 'Greg Mottola', 'Dois adolescentes se metem em varias confusoes antes de uma festa.').
filme(2, 'Clube dos 5', 97, 1985, 'John Hughes', 'Cinco estudantes de diferentes classes sociais passam um sabado de detencao juntos.').
filme(2, 'Os Fantasmas Se Divertem', 92, 1990, 'Tim Burton', 'Um casal de fantasmas tenta assustar os novos moradores de sua casa.').
filme(2, 'O Fabuloso Destino de Amelie Poulain', 122, 2001, 'Jean-Pierre Jeunet', 'Uma jovem decide ajudar pessoas anonimas de formas inesperadas.').
filme(2, 'Scott Pilgrim contra o Mundo', 112, 2010, 'Edgar Wright', 'Um jovem deve derrotar os sete ex-namorados malvados de sua amada.').

% filmes de drama
filme(3, '12 Homens e uma Sentenca', 96, 1957, 'Sidney Lumet', 'Um jurado tenta convencer os outros de que ha duvida no caso.').
filme(3, 'O Poderoso Chefao', 175, 1972, 'Francis Ford Coppola', 'A historia de uma poderosa familia mafiosa.').
filme(3, 'Forrest Gump', 142, 1994, 'Robert Zemeckis', 'Um homem simples atravessa momentos marcantes da historia americana.').
filme(3, 'Clube da Luta', 139, 1999, 'David Fincher', 'Um homem insatisfeito cria uma relacao perigosa com um estranho carismatico.').
filme(3, 'Ela', 126, 2013, 'Spike Jonze', 'Um homem se apaixona por um sistema operacional com inteligencia artificial.').
filme(3, 'Taxi Driver', 114, 1976, 'Martin Scorsese', 'Um motorista solitario e perturbado observa a decadencia de Nova York.').

% filmes de romance
filme(4, 'Antes do Por-do-Sol', 80, 2004, 'Richard Linklater', 'Dois antigos apaixonados se reencontram anos depois.').
filme(4, 'Casablanca', 102, 1942, 'Michael Curtiz', 'Um amor do passado ressurge em meio a guerra.').
filme(4, 'La La Land', 128, 2016, 'Damien Chazelle', 'Dois artistas se apaixonam enquanto perseguem seus sonhos.').
filme(4, 'Dirty Dancing', 100, 1987, 'Emile Ardolino', 'Uma jovem se apaixona pelo instrutor de danca durante as ferias de verao.').
filme(4, 'Um Lugar Chamado Notting Hill', 124, 1999, 'Roger Michell', 'Um livreiros comum se apaixona por uma atriz famosa.').
filme(4, 'Uma Linda Mulher', 119, 1990, 'Garry Marshall', 'Um homem rico se apaixona por uma mulher de programa e muda sua vida.').

% filmes de terror
filme(5, 'A Casa dos Maus Espiritos', 75, 1959, 'William Castle', 'Pessoas passam uma noite em uma mansao mal-assombrada.').
filme(5, 'Que Aconteceu com Baby Jane?', 134, 1962, 'Robert Aldrich', 'Uma ex-estrela mirim atormenta sua irma em uma mansao decadente.').
filme(5, 'O Iluminado', 146, 1980, 'Stanley Kubrick', 'Um homem enlouquece isolado em um hotel sombrio.').
filme(5, 'O Exorcista', 122, 1973, 'William Friedkin', 'Uma garota passa a apresentar sinais de possessao demoniaca.').
filme(5, 'Psicopata Americano', 102, 2000, 'Mary Harron', 'Um executivo de dia e assassino em serie a noite.').
filme(5, 'O Silencio dos Inocentes', 118, 1991, 'Jonathan Demme', 'Uma jovem agente do FBI busca ajuda de um canibal para capturar outro assassino.').

% filmes clássicos
filme(6, 'Crepusculo dos Deuses', 110, 1950, 'Billy Wilder', 'Uma estrela do cinema mudo vive presa ao passado.').
filme(6, 'E o Vento Levou', 238, 1939, 'Victor Fleming', 'Um romance epico durante a Guerra Civil Americana.').
filme(6, 'Cantando na Chuva', 103, 1952, 'Stanley Donen', 'Astros de Hollywood enfrentam a chegada do cinema falado.').
filme(6, 'Janela Indiscreta', 112, 1954, 'Alfred Hitchcock', 'Um fotografo suspeita ter presenciado um crime.').
filme(6, 'Cidadao Kane', 119, 1941, 'Orson Welles', 'A vida de um magnata da imprensa e reconstruida apos sua morte.').
filme(6, 'Gata em Teto de Zinco Quente', 108, 1958, 'Richard Brooks', 'Uma familia enfrenta tensoes e segredos em um jantar.').

% filmes de ficção científica
filme(7, 'Matrix', 136, 1999, 'Lana e Lilly Wachowski', 'Um hacker descobre que a realidade e uma simulacao.').
filme(7, 'Interestelar', 169, 2014, 'Christopher Nolan', 'Astronautas buscam um novo lar para a humanidade.').
filme(7, 'Blade Runner', 117, 1982, 'Ridley Scott', 'Um cacador de androides investiga seres artificiais rebeldes.').
filme(7, 'Alien', 117, 1979, 'Ridley Scott', 'A tripulacao de uma nave enfrenta uma criatura mortal.').
filme(7, 'Coerencia', 89, 2013, 'James Ward Byrkit', 'Durante um jantar, eventos estranhos alteram a realidade dos convidados.').
filme(7, '2001: Uma Odisseia no Espaco', 149, 1968, 'Stanley Kubrick', 'Astronautas enfrentam desafios misteriosos durante uma viagem ao espaco profundo.').

% filmes de animação
filme(8, 'Toy Story', 81, 1995, 'John Lasseter', 'Brinquedos ganham vida quando nao ha humanos por perto.').
filme(8, 'Shrek', 90, 2001, 'Andrew Adamson e Vicky Jenson', 'Um ogro embarca em uma aventura para salvar uma princesa.').
filme(8, 'Procurando Nemo', 100, 2003, 'Andrew Stanton', 'Um peixe atravessa o oceano para encontrar o filho desaparecido.').
filme(8, 'Up: Altas Aventuras', 96, 2009, 'Pete Docter', 'Um idoso realiza o sonho de viajar em uma casa levada por baloes.').
filme(8, 'A Viagem de Chihiro', 125, 2001, 'Hayao Miyazaki', 'Uma garota atravessa um mundo magico para salvar seus pais.').
filme(8, 'Wall-E', 98, 2008, 'Andrew Stanton', 'Um robo solitario encontra uma nova missao na Terra.').

% filmes de suspense
filme(9, 'Psicose', 109, 1960, 'Alfred Hitchcock', 'Uma mulher em fuga encontra um motel sinistro.').
filme(9, 'Garota Exemplar', 149, 2014, 'David Fincher', 'O desaparecimento de uma mulher revela segredos de um casamento.').
filme(9, 'Ilha do Medo', 138, 2010, 'Martin Scorsese', 'Um investigador vai a uma ilha onde funciona um hospital psiquiatrico.').
filme(9, 'Seven: Os Sete Crimes Capitais', 127, 1995, 'David Fincher', 'Dois detectives investigam crimes ligados aos sete pecados capitais.').
filme(9, 'Os Suspeitos', 153, 2013, 'Denis Villeneuve', 'O desaparecimento de meninas leva um pai ao desespero.').
filme(9, 'Zodiaco', 157, 2007, 'David Fincher', 'Jornalistas e policiais tentam descobrir a identidade de um serial killer.').

% filmes de aventura
filme(10, 'Indiana Jones e os Cacadores da Arca Perdida', 115, 1981, 'Steven Spielberg', 'Um arqueologo aventureiro procura um artefato lendario.').
filme(10, 'Jurassic Park', 127, 1993, 'Steven Spielberg', 'Dinossauros clonados escapam do controle em um parque.').
filme(10, 'Piratas do Caribe: A Maldicao do Perola Negra', 143, 2003, 'Gore Verbinski', 'Piratas e maldicoes em uma aventura no mar.').
filme(10, 'O Senhor dos Aneis: A Sociedade do Anel', 178, 2001, 'Peter Jackson', 'Um grupo inicia uma jornada para destruir um anel poderoso.').
filme(10, 'Harry Potter e a Pedra Filosofal', 152, 2001, 'Chris Columbus', 'Um menino descobre que e bruxo e entra em uma escola de magia.').
filme(10, 'Jumanji', 104, 1995, 'Joe Johnston', 'Um jogo misterioso traz perigos da selva para o mundo real.').
