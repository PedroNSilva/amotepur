# Outros Métodos de Amostragem com Equiprobabilidade {#binom}

Neste capítulo apresentamos dois métodos de amostragem de unidades elementares com equiprobabilidade que são menos usados, mas também podem ser úteis em muitas situações de interesse. O primeiro deles é a *Amostragem Binomial ou de Bernoulli - AB* e o segundo é a *Amostragem Inversa Simples - AIS*.

## Amostragem binomial ou de Bernoulli {#binom2}

A *Amostragem Binomial ou de Bernoulli* - AB oferece uma alternativa (pouco usada) à AAS, para selecionar diretamente unidades com *equiprobabilidade*. Trata-se de método de amostragem que também dispensa existência de cadastro prévio para seleção da amostra, podendo a amostra ser selecionada ao mesmo tempo que o cadastro vai sendo construído, como na amostragem sistemática simples.

### Método de seleção da amostra {#binom3}

As unidades aparecem na população ou no cadastro numa certa ordem, digamos igual à dos rótulos $i=1,2,...,N$. Seja $\pi$ a *fração amostral* desejada, tal que $0<\pi<1$. Seja também {$A_1, A_2, ..., A_N$} um conjunto de $N$ variáveis aleatórias *independentes* e distribuídas segundo uma distribuição Uniforme no intervalo $[0;1]$, denotada $U(0;1)$. Associamos cada $A_i$ com a correspondente unidade $i$ da população, para todo $i \in U$.

Então percorremos sequencialmente as unidades $U_i$ da população e são incluídas na amostra todas aquelas para as quais o valor da variável aleatória $A_i$ correspondente é tal que $A_i\le \pi$.

Uma vantagem desse tipo de amostragem é a possibilidade de sua aplicação quando não se tem disponível um cadastro atualizado das unidades populacionais. Por exemplo, numa pesquisa domiciliar os domicílios são identificados sequencialmente num trajeto previamente definido e para cada um desses é selecionado um número aleatório $A_i \sim U(0;1)$. Se $A_i\le \pi$ o domicílio é selecionado e a entrevista realizada. Caso contrário passa-se para o próximo domicílio. Ao final do trajeto, quando toda a área de interesse foi percorrida, tem-se o cadastro atualizado dos domicílios e a amostra selecionada com os questionários preenchidos.

### Probabilidades de inclusão na amostragem binomial

As probabilidades de inclusão de primeira ordem são:

$\pi_i = P(i \in s) = P(A_i \le \pi) = P(U(0;1) \le \pi) = \pi$

As probabilidades de inclusão de segunda ordem são:

$\pi_{ij} = P(i,j \in s) = P(A_i \le \pi \,\, \textrm{e} \,\, A_j \le \pi) = P(A_i \le \pi)  P(A_j \le \pi) = \pi^2 \,\,\,\, \forall \,\, i \neq j \in U$

Uma dificuldade associada com Amostragem Binomial é que, antes de ser feita a seleção da amostra, o *tamanho efetivo da amostra* obtida é uma variável aleatória. Isso pode causar dificuldades para quem está planejando a pesquisa. 

Para verificar isso, note que $n = \sum_{i \in U} I(A_i \le \pi)$. Consequentemente,  $n \, \sim \textrm{Binomial} (N;\pi)$. Logo: $E_{AB}(n) = N  \pi$  e $V_{AB}(n) = N  \pi (1-\pi)$. 

### Estimação do total sob amostragem binomial  {#estAB}

O estimador HT (não viciado) do total $Y$ é dado por: 

$$
\widehat Y_{AB} = \frac{1}{\pi} \sum_{i \in s} y_i \,\, (\#eq:eqbin1)
$$

A variância desse estimador do total é dada por:

$$
\begin{align} V_{AB}(\widehat Y_{AB})& =\left( \frac{1}{\pi} \right)^2 V_{AB} \left( \sum_{i \in s} y_i \right)= \left( \frac{1}{\pi} \right)^2 V_{AB} \left( \sum_{i \in U} \delta_i y_i \right) \\&= \left( \frac{1}{\pi} \right)^2 \sum_{i \in U} V_{AB}(\delta_i) y_i^2 = \left(\frac{1}{\pi}\right)^2 \pi (1-\pi) \sum_{i \in U} y_i^2 \\&= \left(\frac{1}{\pi}-1\right)\sum_{i \in U}y_i^2\end{align}\,(\#eq:eqbin2)
$$
onde $\delta_i$ é a variável indicadora que assume o valor 1 se a unidade $i$ da população foi selecionada para a amostra e o valor 0 caso contrário.

Um estimador não viciado da variância do estimador HT de total é dado por:

$$
\widehat V_{AB}(\widehat Y_{AB}) = \frac{1}{\pi}\left(\frac{1}{\pi}-1\right)\sum_{i \in s}y_i^2\,\,(\#eq:eqbin3)
$$ 

Devido à variabilidade do tamanho efetivo da amostra, o estimador HT do total é pouco eficiente. Um estimador alternativo para o total, definido sempre que $n > 0$, é o estimador tipo razão dado por:

$$
\widehat Y_{AB}^R = \frac{N\pi}{n}\widehat Y_{AB} = N\frac{1}{n}\sum_{i \in s}y_i = N\overline y\,\,(\#eq:eqbin4)
$$ 

Conforme @Sarndal1992, página 65, uma aproximação da variância desse estimador de razão do total é dada por:

$$
V_{AB}(\widehat Y_{AB}^R) \doteq N^2 \left(\frac{1}{N \pi}-\frac{1}{N}\right)S_y^2\,\,(\#eq:eqbin5)
$$  

Esta variância é, portanto, aproximadamente igual à de uma AAS de tamanho igual a $N \pi$, que seria também o tamanho esperado da amostra sob AB. Ainda conforme @Sarndal1992, página 63, a variância do estimador simples do total pode ser reescrita como:

$$
V_{AB}(\widehat Y_{AB}) = N^2\left(\frac{1}{N\pi} - \frac{1}{N}\right)S_y^2 \left[1 - \frac{1}{N} + \frac{1}{CV_y^2}\right]\,\,(\#eq:eqbin6)
$$   

Logo, de acordo com @Sarndal1992, página 65, a eficiência relativa do estimador alternativo é dada por:

$$
\frac{V_{AB}(\widehat Y_{AB})}{V_{AB}(\widehat Y_{AB}^R)} \doteq \left[1-\frac{1}{N}+\frac{1}{CV_y^2}\right] \doteq \left[1+\frac{1}{CV_y^2}\right]\,\,(\#eq:eqbin7)
$$ 

Essa expressão mostra que o estimador alternativo será tanto mais eficiente que o estimador HT quanto menor for o CV da variável de interesse $y$. Isso faz sentido, porque a variância do estimador HT depende da variabilidade do tamanho efetivo da amostra, e esse componente domina a variância total quando o CV da variável de interesse $y$ diminui.

Um estimador consistente da variância do estimador de razão do total é dado por:

$$
\widehat V_{AB} \left( {\widehat Y} _{AB} ^R \right) = N^2  \left( \frac{1}{N \pi} - \frac{1}{N} \right) \widehat S_y^2 \,\, (\#eq:eqbin8)
$$  

onde: 
$$
\widehat S_y^2 = \frac {1}{n-1} \sum_{i \in s} (y_i - \overline y)^2 
$$

### Estimação da média sob amostragem binomial 

O estimador HT (não viciado) da média $\overline{Y}$ é dado por: 

$$
{\overline {y}} _{AB} = \frac{1}{N \pi} \sum_{i \in s}y_i\,\,(\#eq:eqbin9)
$$

A variância do estimador HT da média é dada por:

$$
V_{AB} \left({\overline {y}} _{AB} \right) =  \frac{1}{N^2} \left(\frac{1}{\pi}-1\right)\sum_{i \in U}y_i^2\,\,(\#eq:eqbin10)
$$

Um estimador não viciado da variância do estimador HT da média é dado por:

$$
\widehat V_{AB} \left({\overline {y}} _{AB} \right) = \frac{1}{N^2 \, \pi} \left(\frac{1}{\pi}-1\right)\sum_{i \in s}y_i^2\,\,(\#eq:eqbin11)
$$ 

Assim como no caso do estimador de total, devido à variabilidade do tamanho efetivo da amostra, o estimador HT da média é pouco eficiente. Um estimador alternativo para a média, definido sempre que $n > 0$, é o estimador tipo razão dado por:

$$
{\overline {y}} _{AB} ^R = \frac{N \pi}{n} {\overline {y}} _{AB} = \frac{1}{n} \sum_{i \in s} y_i = \overline y \,\, (\#eq:eqbin12)
$$ 

Uma aproximação da variância do estimador alternativo da média é dada por:

$$
V_{AB} \left( {\overline {y}} _{AB} ^R \right) \doteq \left( \frac{1}{N \pi} - \frac{1}{N} \right) S_y^2 \,\, (\#eq:eqbin13)
$$  

Esta variância é, portanto, aproximadamente igual à do estimador de média sob uma AAS de tamanho igual a $N \pi$, que seria também o tamanho esperado da amostra sob AB. As análises feitas na Seção \@ref(estAB) sobre a eficiência relativa dos estimadores de total são válidas também para os estimadores da média.

Um estimador consistente da variância do estimador alternativo da média é dado por:

$$
\widehat V_{AB} \left( {\overline {y}} _{AB} ^R \right) = \left( \frac{1}{N \pi} - \frac{1}{N} \right) \widehat S_y^2 \,\, (\#eq:eqbin14)
$$  
A Tabela \@ref(tab:tabbin1) resume os resultados para estimação do total e média sob amostragem Binomial ou Bernoulli.

<center>
<table>
<caption>(#tab:tabbin1)Estimadores do total, média e respectivas variâncias sob AB</caption>
</table>

----------
Estimador                                                          
---------------------------------------
$\displaystyle\widehat Y_{AB} = \frac{1}{\pi} \sum_{i \in s} y_i$

                                                                        $\displaystyle\widehat Y_{AB}^R = \frac{N\pi}{n}\widehat Y_{AB} = N\frac{1}{n}\sum_{i \in s}y_i = N\overline y$

                                                     $\displaystyle\overline y_{AB} = \frac{1}{N\pi} \sum_{i \in s} y_i$
                                                                                                                
$\displaystyle\overline y_{AB}^R = \frac{N\pi}{n}\overline y_{AB} = \frac{1}{n}\sum_{i \in s}y_i = \overline y$
                                                                               

$\displaystyle\widehat V_{AB}(\widehat Y_{AB})=\frac{1}{\pi}\left(\frac{1} {\pi}-1\right)\sum_{i \in s}y_i^2$

$\displaystyle\widehat V_{AB} \left({\widehat Y} _{AB}^R\right)=N^2\left(\frac{1}{N\pi}-\frac{1}{N} \right) \widehat S_y^2$ 

$\displaystyle\widehat V_{AB}\left({\overline{y}}_{AB}\right)=\frac{1}{N^2\,\pi}\left(\frac{1} {\pi}-1\right)\sum_{i \in s}y_i^2$ 

$\displaystyle\widehat V_{AB}\left({\overline y}_{AB}^R\right)=\left(\frac{1}{N\pi}-\frac{1}{N} \right)\widehat S_y^2$
----------
</center>

### Exemplos de aplicação da amostragem binomial

Um exemplo clássico ocorre na inspeção alfandegária praticada na saída de passageiros chegando de vôos internacionais num aeroporto. Quando cada passageiro aperta o botão para saber se sua bagagem será ou não inspecionada pela autoridade aduaneira, está em ação um processo de Amostragem Binomial. Não sabemos o valor da fração amostral estabelecida pela autoridade aduaneira, mas este é o único parâmetro necessário para especificar completamente o processo de amostragem em questão. 

A Amostragem Sistemática também seria viável nesse caso, mas poderia ser mais facilmente burlada por pessoas interessadas em não ter sua bagagem inspecionada, caso fossem capazes de detectar qual é o valor do pulo $K$ sendo praticado. O emprego de Amostragem Binomial impede essa prática, ao tornar imprevisível o resultado de cada sorteio que define se o passageiro terá ou não sua bagagem inspecionada. Esta 'proteção' se aplica tanto a comportamentos inadequados dos passageiros alvo da inspeção quanto de agentes encarregados da inspeção, já que nenhum dos dois poderia predizer o resultado do sorteio que define se a bagagem de um passageiro deve ou não ser inspecionada.

Aplicações de Amostragem Binomial para populações em fluxo são convenientes, pois dispensam lista ou cadastro prévios. Como desvantagem, deve-se evitar seu uso sempre que $P(n=0)$ for ‘grande’, pois no caso em que o tamanho efetivo da amostra for nulo é impossível fazer inferência sobre quaisquer parâmetros populacionais de interesse.


## Amostragem inversa simples {#inversa}

Na prática da pesquisa usando métodos de amostragem probabilística, é usual buscar a seleção de um número fixo, pré-especificado $n < N$ de unidades da população $U$ para compor a amostra $s$. As unidades selecionadas para a amostra são então identificadas e abordadas para tentar obter as medidas das variáveis de interesse utilizando-se os instrumentos especificados para a pesquisa em questão. No caso de pesquisas socioeconômicas, frequentemente são utilizados questionários para serem respondidos por algum representante da unidade selecionada, que pode ser uma pessoa, um domicílio, um estabelecimento industrial, uma escola, etc. Em casos como um processo de controle de qualidade por amostragem, podem ser utilizados instrumentos de medida para conferência das dimensões de peças fabricadas em série ou mesmo a realização de ensaios para testar alguma condição desejável. Muitas vezes tais ensaios podem ser destrutivos e, portanto, este é um exemplo clássico onde a utilização de amostragem se impõe pela impossibilidade de testar todas as peças fabricadas.

Um dos problemas que podem ocorrer numa investigação por amostragem é a impossibilidade de se entrevistar ou medir todas as $n$ unidades selecionadas para a amostra $s$. Isso pode ocorrer por vários motivos, tais como a dificuldade de localizar a unidade no campo, a mudança das características da unidade tornando a mesma inelegível para a pesquisa (por exemplo, um endereço onde havia um domicílio selecionado que no momento da pesquisa passou a ser um estabelecimento comercial), a seleção de um domicílio de uso ocasional (por exemplo, uma casa de veraneio), a ausência da pessoa que deveria ser o respondente, ou mesmo devido à simples recusa do informante em responder total ou parcialmente a pesquisa. Todas essas situações implicam redução no tamanho efetivo da amostra e aumento da imprecisão das estimativas geradas.

Muitas das causas que levam à redução da amostra efetiva talvez possam ser prevenidas e evitadas por uma atualização tempestiva do cadastro de seleção. Entretanto, a realidade da população é dinâmica e as mudanças que podem ocorrer na mesma estão fora do controle do amostrista, podendo ser difíceis de captar na preparação do cadastro de seleção. 

Entre as estratégias disponíveis para tentar contornar esse tipo de problema está o superdimensionamento da amostra. Isto consiste em selecionar um tamanho de amostra $m = n+t$ onde $t$ representa uma estimativa da perda esperada de unidades da amostra inicialmente selecionada pelo conjunto das causas potenciais de perda de unidades selecionadas. 
Em pesquisas que são repetidas no tempo ou pesquisas com características semelhantes a outras já realizadas num passado não muito distante, pode-se ter boas estimativas das perdas esperadas de unidades amostrais. Tais estimativas podem ser usadas para orientar o (super)dimensionamento de uma amostra para que esta, mesmo sofrendo perdas na coleta, possa levar à obtenção de uma amostra de tamanho efetivo próximo do tamanho $n$ inicialmente desejado, de modo que seja possível estimar os parâmetros de interesse com o nível de precisão desejado. 

Se as perdas forem menores do que o esperado, as estimativas poderão ser até mais precisas, o que é até positivo do ponto de vista estatístico, embora ao custo de ter coletado uma amostra de tamanho efetivo maior do que o necessário. Uma desvantagem do superdimensionamento é que ele pode ser insuficiente para levar ao tamanho de amostra efetivo desejado, uma vez que as perdas da pesquisa podem ser maiores do que inicialmente estimado. O risco está no fato de que o tamanho efetivo da amostra é uma variável aleatória, cuja distribuição não está sob controle do amostrista.

Outro problema desse tipo de abordagem ocorre quando se está pesquisando tipos de unidades que são raras na população (por exemplo, pessoas portadoras de uma doença tal como glaucoma) e, no cadastro disponível para a seleção da amostra, não existe nenhuma informação desse tipo sobre as pessoas da população de pesquisa. Outros exemplos desse tipo de pesquisa incluem estudos sobre indivíduos de uma faixa etária restrita (idosos acima de 80 anos), estudos sobre empresas que desenvolvem atividade econômica restrita, estabelecimentos agrícolas produtores de um produto específico, etc. Nestes casos pode-se realizar uma etapa prévia de atualização cadastral, comumente chamada de *varredura* ou *screening*, para identificar na população aquelas unidades que pertencem ao grupo de interesse da pesquisa. Esse processo, porém, pode ser muito caro, inviabilizando sua utilização. 

As estratégias exemplificadas acima são úteis para tentar minimizar as perdas de unidades amostrais, mas não eliminam o problema da redução no tamanho efetivo da amostra. Uma outra estratégia para tentar garantir que o número de unidades amostrais coletadas seja efetivamente igual ao valor de $n$ desejado é a chamada *Amostragem Inversa*. Nesta seção abordamos somente o caso mais simples desse tipo de procedimento, que emprega probabilidades iguais de seleção das unidades populacionais. @Tille2016 aborda os casos mais gerais de *Amostragem Inversa* com probabilidades desiguais.

A *Amostragem Inversa Simples - AIS* é um procedimento sequencial de amostragem proposto por @Haldane1945 como forma de enfrentar o problema de amostragem para estimar parâmetros relativos a eventos raros. Em termos gerais, consiste em pesquisar $m \ge n$ unidades da população até encontrar $n$ que tenham as características desejadas ou que forneçam as informações de interesse. Mesmo assim podem ocorrer casos em que a busca se estenda por toda a população (ou estrato ou conglomerado onde se faça uma subamostragem) sem que se encontrem as $n$ unidades de interesse. Nesse caso extremo, o procedimento é interrompido quando $m=N$, mesmo que $m < n$.

### Método de seleção da amostra inversa simples

A implementação mais simples de AIS pode ser feita usando o *Algoritmo de Hàjek* (ver @Hajek1960) para selecionar AAS, tal como descrito na Seção \@ref(Hajek). Este algoritmo se baseia na ideia de obter uma *permutação aleatória* dos rótulos das unidades da população $U$, denotada por $\Pi(U) = \{i_1, i_2, ..., i_N\}$, onde cada um dos rótulos originais tem a mesma probabilidade que qualquer outro de ocupar a 1a. posição, ou a 2a. posição, e assim por diante.

Então a AIS pode ser implementada modificando-se o Passo 3 do algoritmo original da seguinte maneira.

*Passo 3:* Para selecionar uma AIS de tamanho $n$, comece abordando a unidade $i_1$ conforme identificada na permutação $\Pi(U)$. Caso esta unidade participe da pesquisa fornecendo uma entrevista ou conjunto de medidas completo, tal como desejado, adicione 1 unidade ao tamanho efetivo da amostra. Caso a unidade não participe da pesquisa ou não forneça um conjunto mínimo de medidas desejadas, aborde a próxima unidade ($i_2$) buscando obter os dados de interesse ou confirmar a elegibilidade. Prossiga neste processo até que a amostra efetiva tenha $n$ unidades com entrevista completa ou com as características que você está buscando encontrar. 

O processo descrito acima implica que o número de unidades selecionadas para a pesquisa $(m)$ será igual ou maior que o número de unidades na amostra efetiva ($n$). É importante frisar que a amostra efetiva de $n$ unidades obtida ao final do processo continua sendo uma AAS da população de unidades elegíveis. Caso a AIS seja usada para enfrentar problema de não resposta (quando todas as unidades da população são elegíveis), a hipótese subjacente necessária para tratar a amostra efetiva disponível como uma AAS da população $U$ é que a não resposta é completamente ao acaso. 

Outra consideração importante a fazer é que os esforços feitos para obtenção dos dados de cada unidade selecionada devem sempre seguir o mesmo protocolo especificado para a coleta. Variações do protocolo ou do esforço de coleta para cada unidade selecionada podem implicar *não resposta diferencial* e acarretar *viés de seleção* na amostra obtida.

### Amostragem inversa simples para varredura por amostragem

Seja $U$ uma população composta de $N$ unidades para a qual se deseja investigar uma amostra dentre as unidades que fazem parte de uma determinada subpopulação $A \subset U$, ou seja, de um subconjunto das unidades populacionais que possuam uma determinada característica. Nesse caso, a população pode ser descrita como a união de dois subconjuntos, onde um deles será composto das $N_A$ unidades com a característica que interessa, e outro de $N - N_A$ unidades que não possuem tal característica. Considera-se que o tamanho da subpopulação $N_A$ é desconhecido antes da realização da pesquisa. 

As subpopulações de interesse nesse caso satisfazem:

$$
A \cup \overline A = U,\quad A \cap \overline A = \emptyset \quad \text{e} \quad A\neq \emptyset,
$$

onde $\overline A$ é a subpopulação complementar.

Um exemplo prático é o de selecionar uma amostra de domicílios numa localidade para aplicar um questionário a ser respondido apenas pelos domicílios que têm acesso à internet. Neste caso pode-se ter acesso a um cadastro de todos os domicílios da localidade, porém sem a indicação de quais desses domicílios têm acesso à internet. Estes formam a subpopulação $A$ e os demais domicílios da localidade são a subpopulação $\overline A$.

Aplicando AIS para amostrar domicílios com acesso à internet na população $U$, é necessário abordar $m$ domicílios, até que $n$ deles sejam domicílios com acesso à internet. Dessa maneira, o tamanho total da amostra $m$ é uma variável aleatória com distribuição *Hipergeométrica Negativa*, cuja função de probabilidades é dada por:

$$
P(m=k)= \frac{N_A-n+1}{N-k+1} \frac {\binom{N_A}{n-1}\binom{N-N_A}{k-n}} {\binom N{k-1}} (\#eq:eqinv3)
$$
para $k=n, n+1, ..., N_A$. Uma hipótese necessária para obter essa distribuição de probabilidades é que $n < N_A$.

A necessidade de aplicação da *Amostragem Inversa* surge do fato de não estar disponível um cadastro apenas das unidades com determinadas características que as tornem elegíveis para a amostra. Se o mesmo estivesse disponível, bastaria selecionar as $n$ unidades necessárias para a amostra através, por exemplo, de um processo de AAS. Como o cadastro disponível contém, também, unidades não elegíveis para a amostra, é necessário selecionar $m \ge n$ unidades e investigar efetivamente as $n$ unidades com as características desejáveis. Portanto, o tamanho total da amostra, $m$, mede o esforço de abordagem e caracterização das unidades selecionadas. O tamanho da amostra efetiva, $n$, mede o esforço para obtenção das entrevistas ou medidas de interesse da pesquisa. Ambos são relevantes para a estimação dos custos totais da pesquisa. Como $n$ é pré-fixado, resta saber alguma coisa mais sobre $m$. O valor esperado e a variância desta quantidade aleatória são dados por:

$$
E_{AIS} (m)= \frac{(N+1)n}{N_A+1}(\#eq:eqinv4)
$$

e

$$
V_{AIS} (m) = \frac{(N+1)(N_A-n+1)(N-N_A)}{(N_A+1)^2 (N_A+2)}(\#eq:eqinv5)
$$

Embora um dos parâmetros da distribuição, $N_A$, seja desconhecido, as expressões acima podem ser usadas para fazer cálculos com distintos valores que permitirão ter um intervalo de variação esperado para $m$ e, em consequência, para o custo esperado da etapa de abordagem das unidades selecionadas. O fato de que o esforço de abordagem da pesquisa tem tamanho variável (antes de implementar a pesquisa) é provavelmente a principal desvantagem prática da AIS. Por outro lado, o fato de que AIS vai permitir alcançar o tamanho da amostra efetiva desejado é uma vantagem grande em comparação com planos amostrais como AAS, em que o tamanho total da amostra é fixado, mas o tamanho da amostra efetiva é variável.

### Estimação de Horvitz-Thompson na amostragem inversa simples

Existem várias propostas para estimar a média (ou total) populacional utilizando a amostragem inversa simples, como o estimador de Horvitz-Thompson (ver @Horvitz1952), o estimador proposto por @SalehiSeber2001, baseado no estimador de @Murthy1957, ou o estimador proposto por Des Raj (ver @Raj1956), descrito em @Jordao2012. A seguir é apresentada a estimação de Hurvitz-Thompson e na seção seguinte o estimação baseada no estimador de Murthy.

A forma geral do estimador HT, para estimar um total populacional, é dada por:

$$
{\widehat Y}_{HT}= \sum_{k \in s}\frac{ y_k}{\pi_k}
$$
A variância desse estimador é escrita como:

$$
V({\widehat Y}_{HT}) = \sum_{k=1}^N \sum_{l=1}^N (π_{kl}-π_k π_l)\frac{y_k y_l}{π_k π_l}
 $$
Onde $\pi_k$ e $\pi_l$ são as probabilidades de inclusão das unidades $k$ e $l$, respectivamente, na amostra e $\pi_{kl}$ é a probabilidade de inclusão conjunta do par $(k,l)$ na mesma amostra.
 
Para chegar às expressões para a média e variância de seu estimador, basta dividir as expressões apresentadas para o total por $N$ e $N^2$, respectivamente.
 
Para as expressões adaptadas para o caso da amostragem sistemática simples, deve-se calcular os valores das probabilidades de inclusão, de primeira e segunda ordem, para esse desenho amostral. Essas probabilidades são apresentadas por @Mohammadi2012, e uma demonstração detalhada está no apêndice A desse mesmo artigo.

De acordo com as definições apresentadas anteriormente, a população $U$ é dividida em duas subpopulações $A$ e $\overline A$ de tamanhos $N_A$ e $N-N_A$, de onde foi retirada uma amostra de $m$ unidades com $n<m$ pertencentes à subpopulação $A$. Assim pode-se definir:

$$
\displaystyle \pi_k =
\begin{cases} 
\frac n{N_A}\small, & \quad \text { se a unidade } k \in A\\\\ 
\frac n{N_A+1}\small, &\quad \text{ se a unidade } k \in \overline A
(\#eq:eqinv6)
\end{cases}
$$
As probabilidades de inclusão conjunta das unidades $k$ e $l$ na amostra são dadas por:

$$
\displaystyle \pi_{kl} =
\begin{cases} 
\frac {n(n-1)}{N_A(N_A-1)}\small, & \quad\text{ se as unidades } (k,l) \in A\\ 
\frac {n(n+1)}{(N_A+1)(N_A+2)}\small, & \quad\text{ se as unidades } (k,l) \in \overline A\\
\frac {n^2}{N_A(N_A+1)}\small, & \quad\text{ se a unidade } k\in A \text{ e } l\in \overline A
(\#eq:eqinv7)
\end{cases}
$$
O estimador HT para o total populacional utilizando as probabilidades calculadas acima é dado por:

$$
{\widehat Y}_{AIS/HT}=\frac1n  \left (N_A \sum_{k \in s_A} y_k +  (N_A + 1) \sum_{k∈s_{\overline A}} y_k \right)(\#eq:eqinv8)
$$
onde $s_A$ é o conjunto da amostra de $A\quad$ e $\quad s_{\overline A}= s-s_A$.  

A variância do estimador HT para o total na AIS pode ser calculada por:

$$
 \begin{align}
 V_{AIS} ({\widehat Y}_{AIS/HT})& = N_A^2 \left(\frac{N_A – n}{N_A – 1}\right)\frac{\sigma_A^2}n+\frac{(N_A - n + 1) (N – N_A)}{ (N_A + 2) n}\times\\&\;\;\;\;\times\left[(N + 1){{\overline y}}_{\overline A} ^2+ (N_A + 1) \sigma_{\overline A}^2 \right]
 \end{align}(\#eq:eqinv9)
$$
onde: $$\displaystyle {\overline y}_A=\frac1{N_A}\sum_{k\in A}y_k\text{, }\quad{\overline y}_{\overline A}=\frac1{N-N_A}\sum_{k\in \overline A}y_k\text{,}\\ \sigma_A^2=\frac 1{N_A}\sum_{k\in A}(y_k-{\overline y}_A)^2\quad \text{ e }\quad\sigma_{\overline A}^2=\frac 1{N-N_A}\sum_{k\in {\overline A}}(y_k-{\overline y}_{\overline A})^2$$

A variância do estimador do total pode ser estimada por:

$$
\begin{align}\hspace{-1,0cm}
{\widehat V}_{AIS}({\widehat Y}_{AIS/HT})&=N_A^2\left(1-\frac n{N_A}\right)\frac {\widehat S_A^2}n+\\&\;\;\;+\frac{(N_A+1)(N_A-n+1)}{{n(n+1)}}\left[\sum_{k\in s_{\overline A}}y^2_k+\frac1n\left(\sum_{k\in s_{\overline A}}y_k\right)^2\right]\end{align}(\#eq:eqinv10)
$$
onde: $$\widehat S^2_A=\displaystyle\frac{1}{n-1}\sum_{k \in s_A}(y_k-\overline y_A)^2\quad\text{ e }\quad\overline y_A=\displaystyle\frac{1}{n}\sum_{k \in s_A}y_k$$

O estimador da média populacional é obtido dividindo o estimador do total por $N$, enquanto a variância do estimador da média e o estimador desta variância são obtidos dividindo as respectivas expressões por $N^2$, como se segue.

A média da população é estimada por:

$$
 {\overline y}_{AIS/HT}=\frac1{Nn}  \left (N_A \sum_{k \in s_A} y_k +  (N_A + 1) \sum_{k∈ s_{\overline A}} y_k \right)(\#eq:eqinv11)
$$
Sua variância é calculada pela expressão:

$$
\begin{align}\hspace{-1,0cm}
V_{AIS} ({\overline y}_{AIS/HT})& =\left(\frac{N_A}N\right)^2\left(\frac{N_A–n}{N_A–1}\right)\frac{\sigma_A^2}n+\\&\;\;\;+\frac{(N_A-n+1)(N–N_A)}{N^2(N_A+2)n}\left[(N+1){{\overline y}}_{\overline A}^2+(N_A+1) \sigma_{\overline A}^2 \right]\end{align}(\#eq:eqinv12)
$$
Um estimador para a variância do estimador da média é dado pela expressão:

$$
\begin{align}\hspace{-1,0cm}
{\widehat V}_{AIS}({\overline y}_{AIS/HT})& =\left(\frac{N_A}N\right)^2\left(1-\frac n{N_A}\right)\frac {\widehat  S_A^2}n+\\&\;\;\;+\frac{(N_A+1)(N_A-n+1)}{{N^2n(n+1)}}\left[\sum_{k\in s_{\overline A}}y^2_k+\frac1n\left(\sum_{k\in s_{\overline A}}y_k\right)^2\right]\end{align}(\#eq:eqinv13)
$$


 
### Estimação baseada no estimador de Murthy na amostragem inversa simples

A forma geral do estimador para o total populacional proposto por @Murthy1957 é dada por:

$$
{\widehat Y}_M = \sum_{i \in s} \frac {P(s \mid i)} {P(s)}  y_i \,\,\, (\#eq:eqinv14)
$$

onde $P(s\mid i)$ é a probabilidade condicional de selecionar a amostra $s$ dado que a unidade $i$ foi selecionada e $P(s)$ é a probabilidade de seleção da amostra $s$.

A variância desse estimador pode ser calculada com:

$$
V({\widehat Y}_M)=\sum_{i\in U}\sum_{(j<i)\in U}\left(1-\sum_{s\ni i,j}\frac{P(s\mid i)P(s\mid j)}{P(s)}\right)\left(\frac{y_i}{p_i}-\frac{y_j}{p_j}\right)^2 p_ip_j (\#eq:eqinv15)
$$

Um estimador não viciado para essa variância é:

$$
\begin{align}\hspace{-1,5cm}
\widehat {V}({\widehat Y}_M)&=\sum_{i\in s}\sum_{(j<i)\in s}\left(\frac{P(s\mid i,j)}{P(s)}-\sum_{s\ni i,j}\frac{P(s\mid i)P(s\mid j)}{P^2(s)}\right)\left(\frac{y_i}{p_i}-\frac{y_j}{p_j}\right)^2p_ip_j\end{align}(\#eq:eqinv16)
$$

onde $P(s\mid i,j)$ é a probabilidade condicional de selecionar $s$ dado que as unidades $i$ e $j$ foram selecionadas, em qualquer ordem.

Para a média populacional, basta dividir o estimador do total pelo tamanho, $N$, da população, e a variância do estimador do total por $N^2$, ou seja:

$$
 {\overline y}_M = \frac 1 N \sum_{i \in s} \frac {P(s \mid i)} {P(s)} y_i \,\,\,(\#eq:eqinv17)
$$
$$\hspace{-1,0cm}
V({\overline y}_M)=\frac1{N^2}\sum_{i\in U}\sum_{(j<i)\in U}\left(1-\sum_{s\ni i,j}\frac{P(s\mid i)P(s\mid j)}{P(s)}\right)\left(\frac{y_i}{p_i}-\frac{y_j}{p_j}\right)^2p_ip_j(\#eq:eqinv18)
$$
$$\hspace{-2,2cm}
\begin{align}\widehat {V}({\overline{y}}_M)&=\frac1{N^2}\sum_{i\in s}\sum_{(j<i)\in s}\left(\frac{P(s\mid i,j)}{P(s)}-\sum_{s\ni i,j}\frac{P(s\mid i)P(s\mid j)}{P^2(s)}\right)\left(\frac{y_i}{p_i}-\frac{y_j}{p_j}\right)^2p_ip_j\end{align}(\#eq:eqinv19)
$$

No caso da AIS podemos reescrever os estimadores acima da forma sugerida por @SalehiSeber2001. Seja uma variável indicadora $\delta_i$, que assume o valor $1$ se a unidade $i$ da população foi selecionada para a amostra e o valor $0$ caso contrário. No caso da AIS, sabe-se que a última unidade selecionada obrigatoriamente pertence ao subconjunto $A$ da população, como definido acima. Portanto as demais unidades da amostra podem ser alocadas de $(n-1)!$ maneiras, de forma que a amostra $s$ pode ser obtida de $m(n-1)!$ configurações distintas. Para o conjunto das unidades pertencentes à subpopulação $A$ o evento $\{\delta_i=1\}$ pode ocorrer de $(m−1)(n−2)!$ maneiras, enquanto que para as unidades pertencentes à subpopulação $\overline A$ esse mesmo evento pode ocorrer de $m(n-2)!$ formas. Sabe-se, ainda, que a seleção das unidades da amostra é feita com equiprobabilidade. Portanto: 

$$
 \displaystyle\frac {P(s \mid i)} {P(s)} = 
 \begin {cases}  \frac{N(m-1)}{(n-1)m}\small, & \quad \text{se } i \in A \\\\
 \frac N{n-1}\small, & \quad \text{se } i \in \overline A 
 \end {cases} \,\, 
$$

Dessa maneira pode-se reescrever o estimador do total populacional, apresentado na Expressão \@ref(eq:eqinv14), como:

$$
{\widehat Y}_{AIS/M} = \frac N {n-1}\left( \frac{m-1} m\sum_{i \in s_A}  y_i + \sum_{i \in s_{\overline A}} y_i \right) (\#eq:eqinv20)
$$
Cuja variância pode ser obtida obtida através da Expressão \@ref(eq:eqinv15).

Para obter uma expressão para o estimador da variância, seja $n>2$ e:

$$
\frac{P(s\mid i,j)}{P(s)}=\begin{cases}\frac{N(N-1)(n-2)}{(m-1)(m-2)n}\small, & \quad \text{se } i,\;j \in A \\ \\
\frac{N(N-1)(n-1)}{(m-2)(m-1)n)}\small, &\quad\text{se }i\in A \text{ e } j\in\overline A\\ \\
\frac{N(N-1)}{(m-1)(m-2)}\small, &\quad\text{se } i,\;j\in\overline A
\end{cases}
$$
Substituindo na Expressão \@ref(eq:eqinv16), a expressão do estimador da variância pode ser escrita como:

$$
\begin{align}\hspace{-2,0cm}
\small{\widehat V_{AIS}(\widehat Y_{AIS/M}) = \frac{N}{(m-1)^2(m-2)}\left[\frac{n(n-2)(N-m+1)-N(m-2)}{n^2}\sum_{i=1}^n\sum_{j<i}^n (y_i-y_j)^2+\\ \;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;+(N-m+1)\left(\frac{n-1}{n}\sum_{i=1}^n\sum_{j=n+1}^m (y_i-y_j)^2+\sum_{i=n+1}^m\sum_{j>i}^m (y_i-y_j)^2\right)\right]}
\\\\\end{align} (\#eq:eqinv21)
$$

Para obter o estimador da média populacional basta dividir a expressão do estimador do total por $N$:

$$
{\overline y}_{AIS/M} = \frac 1 {n-1}\left( \frac{m-1} m\sum_{i \in s_A} y_i + \sum_{i \in s_{\overline A}} y_i \right) \,\, (\#eq:eqinv22)
$$
O estimador da variância do estimador da média é dado pela expressão:

$$
\begin{align}\hspace{-2,0cm}
\small{\widehat V_{AIS}(\overline y_{AIS/M}) = \frac{1}{N(m-1)^2(m-2)}\left[\frac{n(n-2)(N-m+1)-N(m-2)}{n^2}\sum_{i=1}^n\sum_{j<i}^n (y_i-y_j)^2+\\ \;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;+(N-m+1)\left(\frac{n-1}{n}\sum_{i=1}^n\sum_{j=n+1}^m (y_i-y_j)^2+\sum_{i=n+1}^m\sum_{j>i}^m (y_i-y_j)^2\right)\right]}
\\\\\end{align} (\#eq:eqinv23)
$$
A Tabela \@ref(tab:tabbin2) resume os resultados para estimação sob AIS.

<table>
<caption>(#tab:tabbin2)Estimadores do total, média e respectivas variâncias sob AIS</caption>
</table>
<center>


<center>
----------
Estimador
------------------------------------------------
$\small\displaystyle{\widehat Y}_{AIS/HT}=\frac1n  \left (N_A \sum_{k \in s_A} y_k +  (N_A + 1) \sum_{k∈ s_{\overline A}} y_k \right)$               

                                                     $\small\displaystyle{\widehat Y}_{AIS/M} = \frac N {n-1}\left( \frac{m-1} m\sum_{i \in s_A}  y_i + \sum_{i \in s_{\overline A}} y_i \right)$
             
$\small\displaystyle {\overline y}_{AIS/HT}=\frac1{Nn}\left (N_A \sum_{k \in s_A} y_k +  (N_A + 1) \sum_{k∈ s_{\overline A}} y_k \right)$                

                                                     $\small\displaystyle{\overline y}_{AIS/M} = \frac 1 {n-1}\left( \frac{m-1} m\sum_{i \in s_A}  y_i + \sum_{i \in s_{\overline A}} y_i \right)$
               
$\small\displaystyle{\widehat V}_{AIS}({\widehat Y}_{AIS/HT})=N_A^2\left(1-\frac n{N_A}\right)\frac {\widehat S_A^2}n+\frac{(N_A+1)(N_A-n+1)} {{n(n+1)}} \displaystyle\left[\sum_{k\in s_{\overline A}}y^2_k+\frac1n\left(\sum_{k\in s_{\overline A}}y_k\right)^2\right]$

$\small\displaystyle \widehat V_{AIS}(\widehat Y_{AIS/M})=\frac {N}{(m-1)^2(m-2)}\left[\frac{n(n-2)(N-m+1)-N(m-2)}{n^2}\displaystyle\sum_{i=1}^n\sum_{j<i}^n (y_i-y_j)^2+ \\\\\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;+(N-m+1)\times\displaystyle \left(\frac{n-1}{n}\sum_{i=1}^n\sum_{j=n+1}^m (y_i-y_j)^2+\sum_{i=n+1}^m\sum_{j>i}^m (y_i-y_j)^2\right)\right]$

$\small\displaystyle{\widehat V}_{AIS}({\overline y}_{AIS/HT})=\left(\frac{N_A}N\right)^2\left(1-\frac n{N_A}\right)\frac {\widehat S_A^2}n+\frac{(N_A+1)(N_A-n+1)} {{n(n+1)}} \displaystyle\left[\sum_{k\in s_{\overline A}}y^2_k+\frac1n\left(\sum_{k\in s_{\overline A}}y_k\right)^2\right]$

$\small\displaystyle \widehat V_{AIS}(\overline y_{AIS/M})=\frac {1}{N(m-1)^2(m-2)}\left[\frac{n(n-2)(N-m+1)-N(m-2)}{n^2}\sum_{i=1}^n\sum_{j<i}^n (y_i-y_j)^2+\\\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\; +(N-m+1)\displaystyle \left(\frac{n-1}{n}\sum_{i=1}^n\sum_{j=n+1}^m (y_i-y_j)^2+\sum_{i=n+1}^m\sum_{j>i}^m (y_i-y_j)^2\right)\right]$
---------
</center>

### Exemplos de aplicação da amostragem inversa simples

@Vasconcellos2005 descreve uma aplicação de amostragem inversa simples na etapa de seleção de domicílios dentro dos setores selecionados, numa pesquisa domiciliar empregando amostragem conglomerada. Essa pesquisa talvez represente a primeira aplicação de amostragem inversa numa pesquisa domiciliar nacional realizada no Brasil.

@Tille2016 descreve a aplicação de amostragem inversa a um problema sugerido por uma pesquisa do Statístics Canada, onde é selecionada uma amostra de empresas (ou unidades locais) em estratos representados por regiões econômicas e, em cada uma destas empresas, deve ser selecionada uma amostra das ocupações que fazem parte de uma lista de ocupações para as quais se deseja obter informações. Não se conhece *a priori* a lista de ocupações existentes em cada empresa e, portanto, pode-se lançar mão da amostragem inversa selecionando as ocupações dentro de cada empresa e identificando as ocupações pertencentes à lista de ocupações de interesse, até se obterem informações sobre $m$ ocupações distintas.

O procedimento de AIS pode ser confundido por alguns com um protocolo de *substituição* de unidades selecionadas para a amostra inicial. Esta confusão é indevida. Protocolos baseados em *substituição* de unidades têm em comum a prática de considerar na inferência apenas as unidades da amostra disponível, sem levar em conta o tamanho do esforço feito para conseguir a amostra efetiva. Em muitos casos, sequer são mantidos registros do esforço de coleta efetuado para obtenção de cada entrevista. Além disso, geralmente são implementados dando liberdade a entrevistadores para decidir quando substituir uma unidade selecionada e como fazer a substituição. Tais características tornam protocolos de substituição abordagem de risco e que não recomendamos. 

A AIS, ao contrário, é guiada por procedimentos estritos de amostragem probabilística e, se bem implementada, contribui para reduzir possíveis vieses de seleção da amostra. Além disso, requer a manutenção do controle dos esforços de coleta, permitindo mapear rigorosamente onde ocorreu a eventual não resposta ou perda de unidades selecionadas e, também, mantendo registros do esforço de coleta que permitem incorporar na estimação dados sobre o tamanho desse esforço.

## Exercícios {#exerc9}

**(#exr:exerbin1)** Suponha que você deseja selecionar uma amostra de Bernoulli de uma população para estimar o total de uma variável de interesse, $y$,  com um $CV$ de 10% para o estimador utilizado. Sabe-se que o total de $y$ num censo anterior é de aproximadamente 1,81E6 e a soma dos quadrados dos valores de $y$ é 1,69E11. Calcule o tamanho esperado da amostra para:

a)  Estimar o total utilizando o estimador não viciado de Horvitz-Thompson.    
b)  Estimar o total utilizando o estimador alternativo.
c)  E se a amostra selecionada for uma AAS?

**(#exr:exerbin2)** Uma amostra de Bernoulli, com $\pi = 0,1$, foi selecionada de uma população para estimar os totais de duas variáveis de interesse, $y$ e $x$. A Tabela \@ref(tab:tabbin3) mostra os resultados das observações da amostra.

<center>
<table>
<caption>(#tab:tabbin3)Valores observados na amostra</caption>
</table>
----------
 Variável   Total amostral  Soma dos quadrados
---------- --------------- -------------------
y                    564              15.790

x                  4.178             878.452
----------
</center>

a)  Estime os totais populacionais.
b)  Estime as variâncias dos estimadores.
c)  Estime os coeficientes de variação dos estimadores.
d)  Comente os resultados.

**(#exr:exerbin3)** Seja a população de $N=30$ unidades populacionais, cujos valores da variável de interesse, $y$, são apresentados na Tabela \@ref(tab:tabbin4).

<center>
<table>
<caption>(#tab:tabbin4)População a ser amostrada</caption>
</table>
----------
   i            I    II   III    IV     V
----------- ----- ----- ----- ----- -----
 **1**       30    63    29    76    54

 **2**       95    24    24    76    55

 **3**       53    39    62    53    73

 **4**       63    38    25    52    37

 **5**       58    79    99    55    96

 **6**       29    36    84    52    79

 **Total**   328   279   323   364   394
----------
</center>

Caso não fossem conhecidos os valores da variável representada na tabela, qual seria a melhor alternativa para estimar o total populacional?    
(Em cada caso calcule a variância do estimador do total populacional para justificar sua resposta.)

a)  Uma amostra sistemática com $K=5$?
b)  Uma AAS de tamanho $n=6$?
c)  Uma amostra de Bernoulli com $\pi=0,2$?
  
**(#exr:exerbin4)** Acesse <https://www.ibge.gov.br/estatisticas/sociais/populacao/9662-censo-demografico-2010.html?=&t=downloads>, que é uma área de _**Downloads**_ do *site* do IBGE. Busque na área referente ao Censo 2010 e, em *resultados*, o arquivo 'total_populacao_minas_gerais.zip'. Esse arquivo é uma planilha contendo os resultados para os totais populacionais de cada um dos municípios de Minas Gerais. Selecione uma amostra Binomial dos municípios, com $\pi=0,10$ e, com ela:

a)  Calcule a estimativa do total populacional para Minas Gerais em 2010, baseada na amostra selecionada.
b)  Construa o $IC_{95\%}$ para a estimativa.
c)  Repita os itens a e b, supondo que a amostra foi selecionada utilizando AAS.
d)  Compare os resultados com o valor verdadeiro do total populacional de Minas Gerais no Censo 2010.
e)  Comente  os resultados.

**(#exr:exerbin5)** Uma lista com 10.875 denúncias, contra uma determinada entidade, foi enviada a um analista para que fossem avaliadas. Sabendo que nem todas as denúncias seriam procedentes, o analista resolveu selecionar uma amostra dos processos para estimar o total das denúncias procedentes, seguindo os seguintes passos:

  * Para cada denúncia foi gerado um número aleatório com distribuição $U(0;1)$.
  * A lista foi ordenada em ordem crescente dos aleatórios gerados.
  * Foram incluídas na amostra as denúncias em que o aleatório correspondente foi menor que 0,01.
  
Verifique quais das afirmações seguintes são verdadeiras ou falsas, justificando sua resposta em cada caso:

a)  O analista utilizou uma AAS.
b)  O método utilizado é de equiprobabilidade para toda a população.
c)  Sabendo que na amostra foram observadas 85 denúncias procedentes, a estimativa do total de procedentes na população é 8.500.
d)  Uma estimativa não viciada para a variância da estimativa do total é 840.
e)  O tamanho da amostra é fixo, com $n = 108$.
