+++
title = "Manual Operacional Básico"
tags = [
    "fluxogramas"
]
date = "2017-05-29"
categories = [
    "instruções"
]
+++

O primeiro artigo de conhecimento da ENE ia ter como título "Queremos ser comunidade". Mas a necessidade clama! O sistema está operacional, ainda que "em testes" por tempo indeterminado, e pessoas precisam aprendê-lo.

Fujamos de redações prolixas e vídeos trabalhosos. Usemos fluxogramas. Eles são recurso visual fácil de ser assimilado e pesquisado, e logo tornam-se guias de passo-a-passo auto-explicativos. Sua interpretação será introduzida aqui apenas para agilizar o aprendizado que mais importa.

Nossos fluxogramas são coloridos e seguem a simbologia padrão. Mas não usam caminhos retos. Os pontos de "início" e "fim" ideais são elipses vermelhas. Pontos de decisão são losangos laranja. Caminhos de exceção são tracejados. Ações mais relevantes são indicadas por retângulos verdes. Observações estão em notas amarelas. Paralelogramos cinza fazem referência a subfluxos.

Para uma operacionalização básica, temos:

- Fluxo principal

Mais cinco subfluxos:

- Ações com teclado
- Verificar cabos e energia
- Gerir telas
- Calibração
- WhatsApp

E outro referido pelos dois últimos acima:

- Fechar OptiKey **OU**
- Fechar OptiKey (simplificado)

Se você nunca ouviu falar de fluxogramas, uma dica é tentar deixar as imagens falarem por si. Deixe que blocos, setas e notas guiem você, um passo por vez.

Em dispositivo móvel, você pode ampliar e navegar essas imagens usando o movimento de pinça. No desktop, experimente o zoom do navegador de Internet, geralmente `Control+`. 

## Fluxo principal

{{< figure src="/conhecimento/fluxogramas/01-principal.png" >}}

Note no fluxograma acima que são quatro losangos cinza, porque cada um deles "inclui" um dos subfluxos abaixo. 

Na imagem acima você ainda pode observar duas regiões brancas. Elas compreendem um conjunto de ações intimamente relacionadas em sua sequência. Isso é apenas por uma questão de organização.

## Ações com teclado

Quando existem problemas ou exceções, a pessoa que assiste o paciente deve tomar o controle através do teclado. O primeiro momento em que isso pode ocorrer é antes do paciente ter sua face reconhecida pela máquina.

Estamos num caso de exceção e por isso decidimos não iniciar o fluxograma deste subfluxo com a tradicional elipse vermelha.

{{< figure src="/conhecimento/fluxogramas/02-teclado.png" >}}

Eis o fluxo mais fácil de todos! Uma sequência sem decisões.

Lembre-se de que o fim desse subfluxo (acima) é o retorno a "Reconhecimento facial" como ação em retângulo verde no fluxograma fluxo principal.

## Verificar cabos e energia

Outro caso de exceção importantíssimo. A máquina nem começou a ser usada. Como poderia, se o monitor nem aceso está?

Mais uma vez nosso fluxograma não inicia com elipse vermelha.

{{< figure src="/conhecimento/fluxogramas/03-cabos.png" >}}

Diferentemente do subfluxo anterior, esse segundo embute certa complexidade. Ele tem vários pontos de decisão. Mas tudo é decidido "para frente"; não há voltas.

O ponto de fim ideal seria o retorno a “Reconhecimento facial” — retângulo verde no fluxo principal. Porém, existe um segundo fim possível para esse subfluxo. Algo não desvendado e mais complicado, que requeira uma assistência técnica. Especialmente em nossas primeiras experiências de uso nós já pudemos constatar a [Lei de Murphy] aplicada a telas penduradas.

[Lei de Murphy]: https://pt.wikipedia.org/wiki/Lei_de_Murphy

## Gerir telas

É escolher qual tela deixar acesa ou apagada.

Nosso equipamento tem um monitor grande, de 24 polegadas, anexado a um notebook conversível em _tablet_. O paciente, principal usuário, usa o monitor. Mas seu assistente quase sempre precisará da _touchscreen_.

{{< figure src="/conhecimento/fluxogramas/06-telas.png" >}}

Por motivos variados pode-se querer gerir as telas, e torna-se obrigatório pelo menos duas vezes dentro do fluxo principal.

Uma maneira \[nem sempre\] simplificada de alternar entre os modos é acionar o atalho Tela que encontra-se na Área de Trabalho. Porém, nem sempre consegue-se chegar até ele por um caminho padronizado, devido a problemas técnicos orindos do OptiKey. Se você conseguir chegar à Área de Trabalho usando combinações de `Alt+Tab`e `Windows+D`, com certeza gostará do atalho Tela.

## Calibração

Estamos diante de um subfluxo crucial. Definitivamente não é opcional. Sem uma calibragem fina o paciente não suportará por muito tempo usar o teclado de digitação (que ocupa apenas metade da tela) ou as funções de mouse.

Execute este subfluxo sempre que o paciente solicitar. De tempos em tempos, estimule o paciente a executar o fluxo novamente. Um sistema levemente descalibrado "pode" seguir sendo usado de maneira desapercebida, mas implicará em canseiras físicas e visuais, com alterações posturais e de ânimo.

O pré-requisito é apenas a máquina estar desbloqueada.

{{< figure src="/conhecimento/fluxogramas/04-calibrar.png" >}}

Ao término da calibração, tudo estará aparentemente a mesma coisa. Máquina desbloquada, como já estava. Somente o paciente-usuário pode perceber — sentir nos olhos e no corpo! — o valor de uma boa calibragem. Somente algumas poucas vezes, e por pressa, ela poderá ser negligenciada; se o objetivo imediato for usar o teclado de conversação, que ocupa a tela inteira e é menos exigente.

## WhatsApp

Talvez o principal passatempo do nosso paciente seja esse aplicativo. Daí você tira a não-menor importância deste último subfluxo. Na verdade, esses procedimentos já deveriam estar automatizados. Como não estão, é melhor aprendê-los. Ou vai arranjar briga!

Mais uma vez o pré-requisito é apenas a máquina desbloqueada.

{{< figure src="/conhecimento/fluxogramas/05-whatsapp.png" >}}

Trata-se do fluxograma mais complexo. O fluxo real, na realidade, não é. Infelizmente a parte final do fluxograma (ou seja, da imagem acima) tomou um jeito estranho. O motivo: **ENE precisa desenvolver mais essa parte do WhatsApp.**

Mas não se assuste. Volte à imagem acima sabendo que o objetivo deve ser tão somente o fim ideal, aquela única elipse vermelha que retorna ao estado SISTEMA DESBLOQUEADO.

A volta menor, passando e referenciando um subfluxo "Parear WhatsApp Web", nunca antes mencionando, será assunto para outra postagem.

A volta maior, fazendo duas perguntas e depois não ensinando mais nada, apontando para o início, sinceramente não está merecendo sua atenção hoje. Outro dia...

Talvez tudo mude.

Mas já funciona. Tente outra vez ou nos [envie](mailto:alexandre.mbm@gmail.com) sua questão.

## Fechar OptiKey

Nem sempre se consegue completar essa tarefa usando a _touchscreen_. Curiosamente o toque deixa de funcionar. Siga as dicas das notas. 

{{< figure src="/conhecimento/fluxogramas/07-fechar.png" >}}

Por motivos variados pode-se querer fechar o OptiKey. E será obrigatório em pelo menos dois momentos: uma vez para calibração, uma vez para WhatsApp.

## Fechar OptiKey (simplificado)

Conhecer o fluxo acima é interessante para quando, por exemplo, o OptiKey estiver em tela cheia (teclado de conversação). Noutras circunstâncias será muito mais rápido seguir os passos abaixo:

{{< figure src="/conhecimento/fluxogramas/08-fechar.png" >}}

Dessa maneira o OptiKey encerrará prontamente, sem qualquer pergunta. Fechá-lo pode parecer algo banal, e realmente é. Mas há duas maneiras de fazê-lo e são específicas de algumas circunstâncias.

---

Dúvidas ou sugestões? Não hesite contatar [alexandre.mbm@gmail.com].

[alexandre.mbm@gmail.com]: mailto:alexandre.mbm@gmail.com
