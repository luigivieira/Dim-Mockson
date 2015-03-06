--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_PuzzleBilheteriaAI.onInit (  )

    -- Frases de uso geral
    hashtable.add ( this.htRemarks ( ), "Intro1", "Toque sobre o seu avatar: aquele cabeludinho ali, no final da fila." )
    hashtable.add ( this.htRemarks ( ), "Intro2", "Esse é você. Isso. Visto em 3ª pessoa. Não, você não morreu. Isto é só um jogo, e é assim que você joga. Nunca jogou videogame não?" )
    hashtable.add ( this.htRemarks ( ), "Primeiro Item", "Agora você tem um item. Grandiscoisa! Se quiser vê-lo novamente, toque no meu botão. Mas gentilmente, porque eu sou donzelo. Hehe" )
    hashtable.add ( this.htRemarks ( ), "Primeiro Uso", "Agora escolha um idiota e use esse treco nele. Normalmente eu sugeriria o padre, mas essa piada não entrou nessa versão do jogo. Então eu sugiro o cachorro. Vai que vocÊ finalmente entende porque ele entrou na igreja..." )
    hashtable.add ( this.htRemarks ( ), "Demo", "Aê bródinho, esse jogo é só uma demonstração (pros autores serem aprovados no curso, mas psiu, não conta pra banca!). Dai, essa opção tá disponível não, viu dotô? Se você tiver na neura pra jogar algo que preste, eu sugiro Super Mário." )
    hashtable.add ( this.htRemarks ( ), "Item Selecionado", "Agora, escolha um idiota e use esse treco nele. Normalmente eu sugeriria o padre, mas essa piada não entrou nessa versão do jogo. Então eu sugiro o cachorro. Vai que você finalmente entende porque ele entrou na igreja..." )
    
    -- Frases usadas com a opção comentar
    hashtable.add ( this.htRemarks ( ), "Dim Bananeiras", "Esse é o Dim Mockson. Preciso falar mais alguma coisa desse safado peidorreiro?" )
    hashtable.add ( this.htRemarks ( ), "Dim Curingas", "Esse dai se chama Dim Wesleyson Mockson Júnior. Se eu fosse você, escondia a carteira e os \"vale refeição\"." )
    hashtable.add ( this.htRemarks ( ), "Dim Bicolor", "Dim Mockson, é, digamos, um rapaz alegre. Quando fui contratado me disseram que eu não podia fazer piadas politicamente incorretas. Mas p@#!!, quem estão querendo enganar? Esse cabelinho dele num camufla?" )
    hashtable.add ( this.htRemarks ( ), "Dim Peche", "Quem? Esse dai? Putz, como era mesmo o nome dele? Dim alguma coisa... Sei lá, ele não faz muita coisa, só fica ai sentindo saudades do tempo do melhor jogador deles... o do cabelo esquisito. Pensando bem, será que é pré-requisito também pra ser da torcida?" )
    
    hashtable.add ( this.htRemarks ( ), "Avatar", "Esse é você, já falei. O cara que você tem que zoar é o outro cabeludinho. Você é meio devagar, né não?" )
    hashtable.add ( this.htRemarks ( ), "Dona Berê", "Coitada da véia da Dona Berê, só na correria atrás dos seus duzentos filhos perdidos! Bom, pelo menos ela não tem esse emprego idiota que eu tenho." )
    hashtable.add ( this.htRemarks ( ), "Dona Berê Feliz", "Aê, achou todos os muleque da Dona Berê e tá interessado no prêmio, agora né?. Bom, gosto não se discute. Conversa com ela depois do jogo, quem sabe ela não te dá \"aquele agrado\"?." )
    hashtable.add ( this.htRemarks ( ), "Zé", "Esse é o Zé, um baita vagabundo. Ele passa o dia todo só tocando. Você bem sabe como é isso, né? Hehe" )
    hashtable.add ( this.htRemarks ( ), "Elvis", "Esse é o Elvis, um cambista perigoso. Uma vez ele quase me quebrou na porrada só porque eu não paguei por um ingresso, veja só." )
    hashtable.add ( this.htRemarks ( ), "Djalmão", "Putz, cuidado com o Djalmão! O cara é um presidiário foragido!" )
    hashtable.add ( this.htRemarks ( ), "Patty", "Olá enfermeira! Yummy! Essa é a Patty. Eu pegava, se ela não fosse só um personagem de videogame." )
    hashtable.add ( this.htRemarks ( ), "Mindinho 1", "Esse é o Mindinho 1 ou o 7? Nunca sei diferenciar esses filas da @#%!" )
    hashtable.add ( this.htRemarks ( ), "Mindinho 2", "Esse é o Mindinho 1 ou o 7? Nunca sei diferenciar esses filas da @#%!" )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 1", "Esse é o Mindinho 1 ou o 7? Nunca sei diferenciar esses filas da @#%!" )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 2", "Esse é o Mindinho 1 ou o 7? Nunca sei diferenciar esses filas da @#%!" )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 3", "Esse é o Mindinho 1 ou o 7? Nunca sei diferenciar esses filas da @#%!" )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 4", "Esse é o Mindinho 1 ou o 7? Nunca sei diferenciar esses filas da @#%!" )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 5", "Esse é o Mindinho 1 ou o 7? Nunca sei diferenciar esses filas da @#%!" )
    hashtable.add ( this.htRemarks ( ), "Edu", "Me disseram que esse tal de Edu é todo estouradinho. Hehehe" )
    hashtable.add ( this.htRemarks ( ), "Garrinchinha", "Pode chutar. Esse é o Garrinchinha, o cachorro do Zé." )
    hashtable.add ( this.htRemarks ( ), "Pombo 1", "Pombos são uns \"produtores incessantes de fezes\" que me deixam #@#!! quando cagam em mim. Você não fica também? Putz, posso dizer \"cagar\" nesse horário?" )
    hashtable.add ( this.htRemarks ( ), "Pombo 2", "Pombos são uns \"produtores incessantes de fezes\" que me deixam #@#!! quando cagam em mim. Você não fica também? Putz, posso dizer \"cagar\" nesse horário?" )
    hashtable.add ( this.htRemarks ( ), "Ingresso", "Hum... um ingresso dando sopa! Dá di entrar di grátis no jogo!" )
    hashtable.add ( this.htRemarks ( ), "Pedra", "Bródi, isso ai é uma pedra, como qualquer idiota pode ver. Algum daqueles filas da #@!! dos Mindinhos deve ter jogado ela ai." )
    hashtable.add ( this.htRemarks ( ), "Latinha", "Ó MEU DEUS! PRIMO!! VOCÊ ESTÁ BEM?! Ô VIDA CRUEL, MORREU TÃO JOVEM! Huahuahua To brincando. Nem conheço ele. Que se dane." )

    -- Frases usadas com a opção pegar
    hashtable.add ( this.htRemarks ( ), "Dim Pegar Curingas", "Há! Vai ficar tentando! Nem a polícia consegue pegar esse ai!" )
    hashtable.add ( this.htRemarks ( ), "Dim Pegar Bananeiras", "ÔÔÔÔ! Cuidado! Vai borrar as calças de tanta força que vai precisar pra lenvantar o porcão! hehehe" )
    hashtable.add ( this.htRemarks ( ), "Dim Pegar Peche", "Sério mesmo? Não tinha outra opção melhor pra escolher não? Pô, o designer do jogo teve tanto trabalho e você escolhe uma opção tão manjada." )
    hashtable.add ( this.htRemarks ( ), "Dim Pegar Bicolor", "Hum, gazela lôuuuuuca! Vocês vão precisar de um quarto? Respeite os menores no recinto (onde quer que aqueles desgraçados estejam)." )

    hashtable.add ( this.htRemarks ( ), "Avatar Pegar", "Tsc, tsc. Tão cedo e já bebendo né? Depois não entende porque a sua consciência é uma garrafa de cerveja." )
    hashtable.add ( this.htRemarks ( ), "Dona Berê Pegar", "Er... acho melhor você deixar isso pra depois que terminar o jogo." )
    hashtable.add ( this.htRemarks ( ), "Zé Pegar", "De bêbado pode não ter dono, mas de mendigo tem! O Zé não vai curtir a idéia." )
    hashtable.add ( this.htRemarks ( ), "Elvis Pegar", "Há! Essa eu queria ver!" )
    hashtable.add ( this.htRemarks ( ), "Djalmão Pegar", "Deixa de bobagem que você vai ganhar uma bela dor no [CENSURADO PELA FIFA]." )
    hashtable.add ( this.htRemarks ( ), "Patty Pegar", "Hahaha Só nos seus sonhos mais molhados. Hahahaha Afê, morri de rir agora." )
    hashtable.add ( this.htRemarks ( ), "Mindinho 1 Pegar", "Falou heim Michaeal Jackson. Nem ferrando! A Dona Berê corta fora o teu ânimo." )
    hashtable.add ( this.htRemarks ( ), "Mindinho 2 Pegar", "Falou heim Michaeal Jackson. Nem ferrando! A Dona Berê corta fora o teu ânimo." )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 1 Pegar", "Falou heim Michaeal Jackson. Nem ferrando! A Dona Berê corta fora o teu ânimo." )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 2 Pegar", "Falou heim Michaeal Jackson. Nem ferrando! A Dona Berê corta fora o teu ânimo." )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 3 Pegar", "Falou heim Michaeal Jackson. Nem ferrando! A Dona Berê corta fora o teu ânimo." )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 4 Pegar", "Falou heim Michaeal Jackson. Nem ferrando! A Dona Berê corta fora o teu ânimo." )
    hashtable.add ( this.htRemarks ( ), "Mindinho Escondido 5 Pegar", "Falou heim Michaeal Jackson. Nem ferrando! A Dona Berê corta fora o teu ânimo." )    
    hashtable.add ( this.htRemarks ( ), "Edu Pegar", "Olha, me disseram que nesse ai se você investir, você leva. Mas não diz pra ele que eu contei, porque senão ele fica bravinho." )
    hashtable.add ( this.htRemarks ( ), "Garrinchinha Pegar", "Você não preferiria um gato, não? Eles são mais limpinhos e não fazem tanta bagunça. Esse bicho é muito agitado." )
    hashtable.add ( this.htRemarks ( ), "Pombo 1 Pegar", "Tá procurando emprego de mágico agora é? Tá lôco preibói?" )
    hashtable.add ( this.htRemarks ( ), "Pombo 2 Pegar", "O Zé conhece uma receita de pombo no molho de grama que é um espetáculo! O duro vai ser você conseguir pegar um desses." )
    
    -- Frases usadas com a opção assobiar
    hashtable.add ( this.htRemarks ( ), "Elvis Sem Ingresso", "Putz, ele ta bravo porque roubaram um ingresso dele e você fica chamando o cara? Low profile, bródi, low profile que vai dar cocô. E eu não to falando dos pombos dessa vez!" )
    
    -- Frases usadas com a utilização do ingresso
    hashtable.add ( this.htRemarks ( ), "Dim Ingresso", "Hehe. To acompanhando a tua linha de raciocínio, muito bom! Olha só o manezão, todo feliz que ganhou um ingresso, e nem sabe o que espera por ele." )
    hashtable.add ( this.htRemarks ( ), "Objeto Potencial", "É, você errou meio que o óbvio. Mas sua idéia tem potencial. Se esforça ai (que eu sei que você tá jogando no banheiro enquanto manda um número 2 daquele parmegiana do almoço), que você consegue." )

end
--------------------------------------------------------------------------------
