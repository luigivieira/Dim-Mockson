--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_PuzzleBilheteriaAI.onInit (  )

    -- Frases de uso geral
    hashtable.add ( this.htRemarks ( ), "Intro1", "Toque sobre o seu avatar: aquele cabeludinho ali, no final da fila." )
    hashtable.add ( this.htRemarks ( ), "Intro2", "Esse � voc�. Isso. Visto em 3� pessoa. N�o, voc� n�o morreu. Isto � s� um jogo, e � assim que voc� joga. Nunca jogou videogame n�o?" )
    hashtable.add ( this.htRemarks ( ), "Primeiro Item", "Agora voc� tem um item. Grandiscoisa! Se quiser v�-lo novamente, toque no meu bot�o. Mas gentilmente, porque eu sou donzelo. Hehe" )
    hashtable.add ( this.htRemarks ( ), "Primeiro Uso", "Agora escolha um idiota e use esse treco nele. Normalmente eu sugeriria o padre, mas essa piada n�o entrou nessa vers�o do jogo. Ent�o eu sugiro o cachorro. Vai que voc� finalmente entende porque ele entrou na igreja..." )
    hashtable.add ( this.htRemarks ( ), "Demo", "A� br�dinho, esse jogo � s� uma demonstra��o (pros autores serem aprovados no curso, mas psiu, n�o conta pra banca!). Dai, essa op��o t� dispon�vel n�o, viu dot�? Se voc� tiver na neura pra jogar algo que preste, eu sugiro Super M�rio." )
    hashtable.add ( this.htRemarks ( ), "Item Selecionado", "Agora, escolha um idiota e use esse treco nele. Normalmente eu sugeriria o padre, mas essa piada n�o entrou nessa vers�o do jogo. Ent�o eu sugiro o cachorro. Vai que voc� finalmente entende porque ele entrou na igreja..." )
    
    -- Frases usadas com a op��o comentar
    hashtable.add ( this.htRemarks ( ), "Dim Bananeiras", "Esse � o Dim Mockson. Preciso falar mais alguma coisa desse safado peidorreiro?" )
    hashtable.add ( this.htRemarks ( ), "Dim Curingas", "Esse dai se chama Dim Wesleyson Mockson J�nior. Se eu fosse voc�, escondia a carteira e os \"vale refei��o\"." )
    hashtable.add ( this.htRemarks ( ), "Dim Bicolor", "Dim Mockson, �, digamos, um rapaz alegre. Quando fui contratado me disseram que eu n�o podia fazer piadas politicamente incorretas. Mas p@#!!, quem est�o querendo enganar? Esse cabelinho dele num camufla?" )
    hashtable.add ( this.htRemarks ( ), "Dim Peche", "Quem? Esse dai? Putz, como era mesmo o nome dele? Dim alguma coisa... Sei l�, ele n�o faz muita coisa, s� fica ai sentindo saudades do tempo do melhor jogador deles... o do cabelo esquisito. Pensando bem, ser� que � pr�-requisito tamb�m pra ser da torcida?" )
    
    hashtable.add ( this.htRemarks ( ), "Avatar", "Esse � voc�, j� falei. O cara que voc� tem que zoar � o outro cabeludinho. Voc� � meio devagar, n� n�o?" )
    hashtable.add ( this.htRemarks ( ), "Dona Ber�", "Coitada da v�ia da Dona Ber�, s� na correria atr�s dos seus duzentos filhos perdidos! Bom, pelo menos ela n�o tem esse emprego idiota que eu tenho." )
    hashtable.add ( this.htRemarks ( ), "Dona Ber� Feliz", "A�, achou todos os muleque da Dona Ber� e t� interessado no pr�mio, agora n�?. Bom, gosto n�o se discute. Conversa com ela depois do jogo, quem sabe ela n�o te d� \"aquele agrado\"?." )
    hashtable.add ( this.htRemarks ( ), "Z�", "Esse � o Z�, um baita vagabundo. Ele passa o dia todo s� tocando. Voc� bem sabe como � isso, n�? Hehe" )
    hashtable.add ( this.htRemarks ( ), "Elvis", "Esse � o Elvis, um cambista perigoso. Uma vez ele quase me quebrou na porrada s� porque eu n�o paguei por um ingresso, veja s�." )
    hashtable.add ( this.htRemarks ( ), "Djalm�o", "Putz, cuidado com o Djalm�o! O cara � um presidi�rio foragido!" )
    hashtable.add ( this.htRemarks ( ), "Patty", "Ol� enfermeira! Yummy! Essa � a Patty. Eu pegava, se ela n�o fosse s� um personagem de videogame." )
    hashtable.add ( this.htRemarks ( ), "Mindinho 1", "Esse � o Mindinho 1 ou o 7? Nunca sei diferenciar esses filas da @#%!" )
    hashtable.add ( this.htRemarks ( ), "Mindinho 2", "Esse � o Mindinho 1 ou o 7? Nunca sei diferenciar esses filas da @#%!" )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 1", "Esse � o Mindinho 1 ou o 7? Nunca sei diferenciar esses filas da @#%!" )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 2", "Esse � o Mindinho 1 ou o 7? Nunca sei diferenciar esses filas da @#%!" )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 3", "Esse � o Mindinho 1 ou o 7? Nunca sei diferenciar esses filas da @#%!" )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 4", "Esse � o Mindinho 1 ou o 7? Nunca sei diferenciar esses filas da @#%!" )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 5", "Esse � o Mindinho 1 ou o 7? Nunca sei diferenciar esses filas da @#%!" )
    hashtable.add ( this.htRemarks ( ), "Edu", "Me disseram que esse tal de Edu � todo estouradinho. Hehehe" )
    hashtable.add ( this.htRemarks ( ), "Garrinchinha", "Pode chutar. Esse � o Garrinchinha, o cachorro do Z�." )
    hashtable.add ( this.htRemarks ( ), "Pombo 1", "Pombos s�o uns \"produtores incessantes de fezes\" que me deixam #@#!! quando cagam em mim. Voc� n�o fica tamb�m? Putz, posso dizer \"cagar\" nesse hor�rio?" )
    hashtable.add ( this.htRemarks ( ), "Pombo 2", "Pombos s�o uns \"produtores incessantes de fezes\" que me deixam #@#!! quando cagam em mim. Voc� n�o fica tamb�m? Putz, posso dizer \"cagar\" nesse hor�rio?" )
    hashtable.add ( this.htRemarks ( ), "Ingresso", "Hum... um ingresso dando sopa! D� di entrar di gr�tis no jogo!" )
    hashtable.add ( this.htRemarks ( ), "Pedra", "Br�di, isso ai � uma pedra, como qualquer idiota pode ver. Algum daqueles filas da #@!! dos Mindinhos deve ter jogado ela ai." )
    hashtable.add ( this.htRemarks ( ), "Latinha", "� MEU DEUS! PRIMO!! VOC� EST� BEM?! � VIDA CRUEL, MORREU T�O JOVEM! Huahuahua To brincando. Nem conhe�o ele. Que se dane." )

    -- Frases usadas com a op��o pegar
    hashtable.add ( this.htRemarks ( ), "Dim Pegar Curingas", "H�! Vai ficar tentando! Nem a pol�cia consegue pegar esse ai!" )
    hashtable.add ( this.htRemarks ( ), "Dim Pegar Bananeiras", "����! Cuidado! Vai borrar as cal�as de tanta for�a que vai precisar pra lenvantar o porc�o! hehehe" )
    hashtable.add ( this.htRemarks ( ), "Dim Pegar Peche", "S�rio mesmo? N�o tinha outra op��o melhor pra escolher n�o? P�, o designer do jogo teve tanto trabalho e voc� escolhe uma op��o t�o manjada." )
    hashtable.add ( this.htRemarks ( ), "Dim Pegar Bicolor", "Hum, gazela l�uuuuuca! Voc�s v�o precisar de um quarto? Respeite os menores no recinto (onde quer que aqueles desgra�ados estejam)." )

    hashtable.add ( this.htRemarks ( ), "Avatar Pegar", "Tsc, tsc. T�o cedo e j� bebendo n�? Depois n�o entende porque a sua consci�ncia � uma garrafa de cerveja." )
    hashtable.add ( this.htRemarks ( ), "Dona Ber� Pegar", "Er... acho melhor voc� deixar isso pra depois que terminar o jogo." )
    hashtable.add ( this.htRemarks ( ), "Z� Pegar", "De b�bado pode n�o ter dono, mas de mendigo tem! O Z� n�o vai curtir a id�ia." )
    hashtable.add ( this.htRemarks ( ), "Elvis Pegar", "H�! Essa eu queria ver!" )
    hashtable.add ( this.htRemarks ( ), "Djalm�o Pegar", "Deixa de bobagem que voc� vai ganhar uma bela dor no [CENSURADO PELA FIFA]." )
    hashtable.add ( this.htRemarks ( ), "Patty Pegar", "Hahaha S� nos seus sonhos mais molhados. Hahahaha Af�, morri de rir agora." )
    hashtable.add ( this.htRemarks ( ), "Mindinho 1 Pegar", "Falou heim Michaeal Jackson. Nem ferrando! A Dona Ber� corta fora o teu �nimo." )
    hashtable.add ( this.htRemarks ( ), "Mindinho 2 Pegar", "Falou heim Michaeal Jackson. Nem ferrando! A Dona Ber� corta fora o teu �nimo." )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 1 Pegar", "Falou heim Michaeal Jackson. Nem ferrando! A Dona Ber� corta fora o teu �nimo." )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 2 Pegar", "Falou heim Michaeal Jackson. Nem ferrando! A Dona Ber� corta fora o teu �nimo." )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 3 Pegar", "Falou heim Michaeal Jackson. Nem ferrando! A Dona Ber� corta fora o teu �nimo." )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 4 Pegar", "Falou heim Michaeal Jackson. Nem ferrando! A Dona Ber� corta fora o teu �nimo." )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 5 Pegar", "Falou heim Michaeal Jackson. Nem ferrando! A Dona Ber� corta fora o teu �nimo." )    
    hashtable.add ( this.htRemarks ( ), "Edu Pegar", "Olha, me disseram que nesse ai se voc� investir, voc� leva. Mas n�o diz pra ele que eu contei, porque sen�o ele fica bravinho." )
    hashtable.add ( this.htRemarks ( ), "Garrinchinha Pegar", "Voc� n�o preferiria um gato, n�o? Eles s�o mais limpinhos e n�o fazem tanta bagun�a. Esse bicho � muito agitado." )
    hashtable.add ( this.htRemarks ( ), "Pombo 1 Pegar", "T� procurando emprego de m�gico agora �? T� l�co preib�i?" )
    hashtable.add ( this.htRemarks ( ), "Pombo 2 Pegar", "O Z� conhece uma receita de pombo no molho de grama que � um espet�culo! O duro vai ser voc� conseguir pegar um desses." )
    
    -- Frases usadas com a op��o assobiar
    hashtable.add ( this.htRemarks ( ), "Elvis Sem Ingresso", "Putz, ele ta bravo porque roubaram um ingresso dele e voc� fica chamando o cara? Low profile, br�di, low profile que vai dar coc�. E eu n�o to falando dos pombos dessa vez!" )
    
    -- Frases usadas com a utiliza��o do ingresso
    hashtable.add ( this.htRemarks ( ), "Dim Ingresso", "Hehe. To acompanhando a tua linha de racioc�nio, muito bom! Olha s� o manez�o, todo feliz que ganhou um ingresso, e nem sabe o que espera por ele." )
    hashtable.add ( this.htRemarks ( ), "Objeto Potencial", "�, voc� errou meio que o �bvio. Mas sua id�ia tem potencial. Se esfor�a ai (que eu sei que voc� t� jogando no banheiro enquanto manda um n�mero 2 daquele parmegiana do almo�o), que voc� consegue." )

end
--------------------------------------------------------------------------------
