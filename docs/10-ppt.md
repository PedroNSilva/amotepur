# Amostragem com Probabilidades Proporcionais ao Tamanho - PPT {#ppt}

## Justificativa para amostragem PPT

Como já indicado no capítulo \@ref(visger), a *Amostragem Probabilística* contempla o emprego de métodos de amostragem que levam a ter probabilidades de inclusão na amostra desiguais, isto é, $\pi_i \ne \pi_j$ para algum par de unidades distintas $i \ne j \in U$. A teoria apresentada no capítulo \@ref(visger) cobre o caso geral, mas não indica quando o recurso de usar probabilidades desiguais de inclusão na amostra seria vantajoso. Neste capítulo tratamos justamente dessa questão, indicando estratégias que se pode usar para tirar proveito do emprego de amostragem com probabilidades desiguais para aumentar a eficiência dos estimadores de totais e médias.

A ideia central já mencionada na seção \@ref(propHT) é fazer com que as probabilidades de inclusão fiquem proporcionais aos valores da(s) variável(is) de estudo $y$. É claro que não podemos conseguir isso de forma exata, já que os valores da variável $y$ são desconhecidos antes da seleção da amostra. Mas em muitas situações práticas é possível contar com cadastros que contenham valores de uma variável auxiliar $x$ indicativa do tamanho das unidades populacionais. Sempre que a variação dos tamanhos das unidades for grande, a informação auxiliar disponível sobre os tamanhos for precisa e o tamanho for positivamente correlacionado com as variáveis de interesse podemos empregar métodos de seleção que usam probabilidades proporcionais ao tamanho. Tais métodos permitem aumentar a eficiência na estimação de totais e médias, em comparação com métodos de amostragem com probabilidades iguais, para tamanhos de amostra idênticos.

### Estimação do total populacional

Considere o caso em que os valores de uma variável auxiliar $x$ são conhecidos para todos as unidades da população $U$ mediante um cadastro. Se $x_i>0 \,\, \forall \, i \in U$, então podemos usar esta variável como uma *medida de tamanho* das unidades populacionais. Por enquanto, vamos supor que é possível selecionar amostras de acordo com um plano amostral tal que: $\pi_i \propto x_i \,\,\forall \,\, i \in U$. Mais tarde, apresentaremos diversos métodos para implementar essa ideia.

Conforme já mostrado no capítulo \@ref(visger), sabemos que o estimador HT para estimar o total populacional $Y = \sum_{i \in U} y_i$ é dado por:

$$
\widehat Y_{HT} = \displaystyle \sum_{i \in s} \frac{y_i}{\pi_i} = \displaystyle \sum_{i \in s} d_i y_i \,\, (\#eq:eqppt1)
$$
onde cada unidade da amostra tem um peso amostral igual ao inverso da respectiva probabilidade de inclusão, dado por $d_i = 1 / \pi_i \,\, \forall \, i \in U$.

Quando a probabilidade de inclusão na amostra é proporcional ao tamanho, temos:
$\pi_i = n \times {x_i} / {X}$ 
onde $X = \sum_{i \in U} x_i$ é o total populacional da variável $x$ e $n$ é o tamanho da amostra. 

Sendo assim, o peso amostral da unidade $i$ é dado por $d_i = X / (n x_i)$. Substituindo na equação \@ref(eq:eqppt1), o estimador HT do total $Y$ fica dado por:

$$
\widehat Y_{HT/PPT} = \displaystyle X \times \frac{1}{n} \sum_{i \in s} \frac{y_i}{x_i}  \,\, (\#eq:eqppt2)
$$
Verifica-se então que, para amostras extraídas com probabilidades de inclusão exatamente proporcionais ao tamanho, o estimador de total depende de estimar a *média das razões* entre a variável de interesse $y$ e a medida de tamanho $x$, e depois multiplicar essa estimativa pelo total conhecido da medida de tamanho na população. Essa forma de apresentar o estimador de total sugere que sempre que as razões ${y_i}/{x_i}$ forem aproximadamente constantes, a média amostral delas será um estimador preciso da correspondente média populacional, e o estimador de total terá variância pequena.

Uma forma de ver isto mais diretamente requer lembrar da expressão alternativa para a variância do estimador HT, válida para planos amostrais de tamanhos fixos, a chamada forma SYG (Sen-Yates-Grundy) da variância, dada por:

$$
\begin{align} V_{SYG} \left( \widehat Y_{HT/PPT} \right) & = \displaystyle \sum_{i \in U} \sum_{j>i} (\pi_i \pi_j - \pi_{ij}) \left( \frac{y_i}{\pi_i} - \frac{y_j}{\pi_j} \right)^2 \\
& = \displaystyle X^2 \times \frac{1}{n^2} \sum_{i \in U} \sum_{j>i} (\pi_i \pi_j - \pi_{ij}) \left( \frac{y_i}{x_i} - \frac{y_j}{x_j} \right)^2 \end{align} \,\, (\#eq:eqppt3)
$$

Da expressão \@ref(eq:eqppt3) podemos observar que a variância do estimador de total seria nula caso $y_i/x_i = y_j/x_j$ para todo $i \neq j \in U$. Portanto, se $y_i \propto x_i \,\,\forall i \in U$, então $V_{SYG}\left( \widehat Y_{HT} \right) = 0$. Isto sugere que se $y$ e $x$ forem aproximadamente proporcionais (logo, alta e positivamente correlacionadas), então a variância do estimador HT do total será pequena.

Também se pode notar que a variância deveria ser pequena quando $\pi_{ij} \doteq \pi_i \pi_j \,\, \forall \, i \neq j \in U$. Acontece que $\pi_{ij} = \pi_i \pi_j \,\, \forall \, i \neq j \in U$ implica em indicadores de inclusão das unidades $i$ e $j$ independentes. Um plano amostral satisfazendo essa propriedade é a *Amostragem de Poisson* que estudaremos adiante. Entretanto, *Amostragem de Poisson* não é eficiente, como veremos, devido à variabilidade do tamanho amostral efetivo, e também não podemos usar a expressão de variância na forma SYG para esse plano amostral, justamente porque não tem tamanho amostral fixo.

Sendo assim, a chave para alcançar eficiência através da amostragem PPT é ter medidas de tamanho ($x$) alta e positivamente correlacionadas com a(s) resposta(s) de interesse na pesquisa ($y$). Essa situação é muitas vezes encontrada ao realizar pesquisas de estabelecimentos ou instituições, onde as principais variáveis de estudo da pesquisa são bem correlacionadas com medidas de tamanho frequentemente disponíveis nos cadastros empregados para seleção das respectivas amostras.

A seleção de amostras com PPT pode ser feita com ou sem reposição. O sorteio de amostras com reposição é pouco usado na prática, devido à perda de eficiência em comparação com métodos de sorteio sem reposição e também ao problema prático do que fazer em caso de repetição de unidades selecionadas. Apesar disso, é importante conhecer este método e suas propriedades, pois com frequência é usado como aproximação para obter estimativas simplificadas de variãncia. Já na amostragem PPT sem reposição há vários métodos de seleção, trazendo mais complexidade e dificuldades na estimação da precisão. Porém a eficiência é maior e se justifica o emprego de métodos mais complexos. 

Na sequência apresentamos os principais métodos de sorteio de amostras PPT, com e sem reposição. Para um tratamento mais completo dos métodos disponíveis, consultar @Brewer1983.

## Amostragem PPT Com Reposição

O algoritmo para seleção de amostra PPT com reposição é denominado *método dos totais cumulativos*, e consiste nos seguintes passos: 

1. Acumule as medidas de tamanho na população, isto é, faça $X_{(0)} = 0$ e calcule $X_{(K)} = \displaystyle \sum_{k=1}^{i} x_k$ para $i=1,...,N$.

2. Determine *intervalos de seleção* com base no tamanho de cada unidade. Assim, o intervalo de seleção para a unidade $k$ será dado por $(X_{(i-1)} ; X_{(i)}]$, sendo o limite superior incluído, para $i=1,...,N$. 

3. Selecione um número aleatório $r$ com distribuição uniforme entre 0 e $X_{(N)} = X$, a soma dos tamanhos na população.

4. Selecione a unidade correspondente ao intervalo no qual cai o número aleatório $r$, isto é, selecione $i$ tal que $r \in (X_{(i-1)} ; X_{(i)}]$.

5. Repita os passos 3 e 4 tantas vezes quantas forem necessárias para obter a amostra do tamanho $n$ desejado.

A *Amostra selecionada* $s$ é constituída pelas unidades $i_1, ..., i_l, ..., i_n$ cujos rótulos foram sorteados nas várias iterações do passo 4.

Amostragem PPT Com Reposição é um método muito simples de implementar, mas que pode implicar seleção repetida da(s) mesma(s) unidade(s). O tamanho efetivo da amostra (número de unidades distintas na amostra) é aleatório, podendo ser menor que o tamanho total desejado ($n$). O exemplo a seguir ilustra o emprego do método com uma pequena população para ajudar a compreensão.

**(#exm:exmppt1)** Considere a população de $N=6$ fazendas com as respectivas áreas, conforme apresentada na Tabela \@ref(tab:tabppt1). Este exemplo mostra como extrair uma amostra de $n=3$ fazendas usando PPT com reposição, tomando a variável Área como medida de tamanho, usando o *método dos totais cumulativos*.

<center>
<table>
<caption>(#tab:tabppt1)Informações das áreas de uma população de $N=6$ fazendas</caption>
</table>
----------
 Fazenda    Área  Tamanho Acumulado   Limite inferior do intervalo   Limite superior do intervalo
--------- ------ ------------------ ------------------------------ ------------------------------
   1          50    50                            0	                               50
   
   2       1.000   1.050	                       51	                            1.050
   
   3         125   1.175	                    1.051	                            1.175
   
   4         300   1.475	                    1.176	                            1.475
   
   5         500   1.975	                    1.476	                            1.975
   
   6          25   2.000	                    1.976	                            2.000
----------
</center>

Caso os 3 números aleatórios sorteados de forma independente e com distribuição Uniforme entre 0 e 2.000 fossem 654, 1.230 e 1.555, então as fazendas selecionadas seriam as de números 2, 4 e 5. Caso os 3 números aleatórios entre 0 e 2.000 fossem 122, 754 e 1.980, então as fazendas 2 e 6 seriam as selecionadas, com a fazenda 2 sendo selecionada duas vezes.

**Estimação do total sob amostragem PPT Com Reposição**

Um estimador não viciado do total sob amostragem PPT com reposição é dado por: 

$$
\widehat Y_{PPTC} = \frac{1}{n} \sum_{i \in s} \frac{f_i y_i}{p_i} \,\, (\#eq:eqppt4) 
$$

onde $f_i$ representa o número de vezes que a unidade $i$ foi incluída na amostra $s$, e $p_i = x_i / X$ é o tamanho relativo da unidade $i$. Note que o número de unidades distintas no conjunto $s$ pode ser menor que $n$, e também que $\sum_{i \in s} f_i = \sum_{i \in U} f_i = n$.

Note que o estimador não viciado para o total da expressão \@ref(eq:eqppt4) não é o estimador tipo HT. Este estimador foi proposto por @Hansen1943, por isso é chamado de estimador de Hansen-Hurwitz - HH, e é também não viciado. O estimador HT também pode ser empregado com este plano amostral, mas precisaria do cálculo das probabilidades de inclusão de primeira ordem das unidades populacionais, dadas por:

$$
\pi_i = 1 - (1  -p_i)^n
$$
A principal vantagem do estimador HH aqui apresentado é a simplicidade referente à estimação de variâncias. Não há resultados genéricos indicando em que situações a variância do estimador HH seria menor que a do estimador HT.

A variância de $\widehat Y_{PPTC}$ e o seu respectivo estimador não viciado são dados por: 

$$
V_{PPTC}\left(\widehat  Y_{PPTC}\right) = \frac{1}{n} \displaystyle \sum_{i \in U} \left( \frac{y_i}{p_i} - Y \right)^2 p_i \,\, (\#eq:eqppt5) 
$$

$$
\widehat V_{PPTC} \left(\widehat Y_{PPTC}\right) = \frac{1}{n(n-1)} \displaystyle \sum_{i \in s} f_i \left( \frac{y_i}{p_i} - \widehat Y_{PPTC} \right)^2 \,\,(\#eq:eqppt6)
$$

Como já discutido anteriormente, métodos de seleção com reposição raramente são empregados na prática, pois sempre é possível aplicar métodos sem reposição de maior eficiência para o mesmo custo. Por esse motivo, passaremos agora a discutir alguns dos muitos métodos disponíveis para sorteio de amostras com *PPT sem reposição*. Nossa seleção de métodos a apresentar se guiou fortemente pela relevância da aplicação destes métodos em pesquisas conduzidas no Brasil, que vamos citar como exemplos ao longo da discussão.

## Amostragem PPT de Poisson - PO

O *método de Poisson* para seleção de amostras com PPT sem reposição é implementado mediante a realização de uma prova de Bernoulli independente para cada unidade da população, que determina se a unidade é incluída (ou não) na amostra com uma probabilidade proporcional ao seu tamanho. Caso todas as probabilidades de inclusão na amostra sejam iguais, este método se reduz à *Amostragem Binomial*, e portanto, este método é uma generalização daquele método.

Um algoritmo baseado em processamento sequencial de lista para implementar o método PPT de Poisson para selecionar uma amostra de tamanho $n$ da população $U$ de tamanho $N$ consiste dos seguintes passos.

1. Para cada unidade populacional $i$, determine o valor da probabilidade de inclusão $\pi_i = n x_i / X = n p_i$.

2. Para cada unidade da população selecione, de forma independente, um número aleatório $A_i$ com distribuição uniforme no intervalo [0;1].

3. Inclua a unidade $i$ na amostra se $A_i \le \pi_i$.

O conjunto $s$ de unidades selecionadas por este algoritmo não terá unidades repetidas, e terá um tamanho efetivo aleatório, de valor esperado igual a $n$. 

Alguns cuidados devem ser observados ao implementar a *Amostragem PPT de Poisson*. Em primeiro lugar, verifique se nenhuma unidade tem tamanho relativo $x_i / X$ maior que $1/n$. Se isto ocorrer, a ‘probabilidade de inclusão’ desta unidade seria maior que 1, o que é impossível. Caso alguma unidade seja tão grande que $x_i / X > 1/n$, inclua esta unidade com certeza (isto é, faça $\pi_i = 1$). Em seguida, refaça os cálculos dos $\pi_i$ com o tamanho desta unidade excluído do total $X$, e o tamanho de amostra diminuído de uma unidade. Repita a verificação até que nenhuma unidade tenha tamanho relativo maior que 1 sobre o tamanho residual da amostra.

A *Amostragem PPT de Poisson* é pouco usada na prática devido à variabilidade do tamanho efetivo da amostra. É um metodo menos eficiente que outros métodos de seleção PPT sem reposição. Um método moderno que corrige este defeito é *Amostragem Sequencial de Poisson (ASP)* - veja @Ohlsson1998 - descrito na seção seguinte.

**Estimação HT do total sob Amostragem de Poisson**

O estimador HT do total sob Amostragem de Poisson é dado por: 

$$
\widehat Y_{PO} = \sum_{i \in s} \frac{y_i} {\pi_i} =  \frac{1}{n} \sum_{i \in s} \frac{y_i}{p_i} \,\,(\#eq:eqppt7)
$$

A variância de $\widehat Y_{PO}$ e um estimador não viciado desta variância são dados por: 

$$
V_{PO} \left( \widehat Y_{PO} \right) = \displaystyle \sum_{i \in U} \pi_i (1 - \pi_i) \left( \frac{y_i}{\pi_i} \right)^2 = \displaystyle \sum_{i \in U} \frac{(1 - \pi_i)}{\pi_i} y_i^2 \,\, (\#eq:eqppt8) 
$$

$$
\widehat V_{PO} \left( \widehat Y_{PO} \right) = \displaystyle \sum_{i \in s} (1 - \pi_i) \left( \frac{y_i}{\pi_i} \right)^2 = \displaystyle \sum_{i \in s} \frac{(1 - \pi_i)}{\pi_i^2} y_i^2 \,\, (\#eq:eqppt9) 
$$

Como ocorre na *Amostragem Binominal*, devido ao tamanho efetivo da amostra ser variável, também é possível usar um estimador de total tipo razão sob *Amostragem de Poisson*. Tal estimador é mais eficiente do que o estimador HT. Este estimador tipo razão é dado por:

$$
\widehat Y_{PO}^R = \frac{N}{\widehat N} \sum_{i \in s} d_i {y_i} = N \frac{\sum_{i \in s} d_i {y_i}}{\sum_{i \in s} d_i } \,\,(\#eq:eqppt10)
$$

A variância aproximada de $\widehat Y_{PO}^R$ e um estimador consistente desta variância são dados por:

$$
V_{PO}\left(\widehat  Y_{PO}^R \right) \doteq \frac {N}{N-1} \frac{1}{n} \displaystyle \sum_{i \in U} (1 - n p_i) \left( \frac{y_i}{p_i} - Y \right)^2 p_i \,\, (\#eq:eqppt11) 
$$
e

$$
\widehat V_{PO}\left(\widehat Y_{PO}^R \right) = \frac{1}{n(m-1)} \displaystyle \sum_{i \in s} (1 - n p_i) \left( \frac{y_i}{p_i} - \widehat Y_{PO}^R \right)^2 \,\, (\#eq:eqppt12) 
$$
onde $m$ é o tamanho efetivo da amostra selecionada. Para mais detalhes sobre a estimação da variância, veja @Ohlsson1998.

## Amostragem sequencial de Poisson - ASP

O método de *Amostragem Sequencial de Poisson - ASP*, proposto por @Ohlsson1998, é uma modificação do método de *Amostragem de Poisson* que elimina a variabilidade do tamanho efetivo da amostra. O custo dessa modificação é um procedimento de amostragem um pouco mais complexo, e que requer uso de resultados aproximados para a estimação tanto do total como de sua variância.

Um algoritmo baseado em processamento sequencial de lista para implementar o método para selecionar uma amostra de tamanho $n$ da população $U$ consiste dos seguintes passos.

1. Gere um número aleatório uniforme independente $A_i$ para cada unidade $i$ da população.

2. Calcule a medida de tamanho relativo $p_i = x_i / X$ para cada unidade $i$ da população.

3. Calcule o *número aleatório modificado* $C_i = A_i / p_i$.

4. Ordene as unidades crescentemente segundo os valores dos números aleatórios modificados $C_i$.

5. Selecione para a amostra as $n$ unidades com os menores valores de $C_i$.

**Estimação com Amostragem Sequencial de Poisson**

O estimador tipo HT do total sob *Amostragem Sequencial de Poisson* é dado por: 

$$
\widehat Y_{ASP} = \frac{1} {n} \sum_{i \in s} \frac{y_i}{p_i} \,\, (\#eq:eqppt13) 
$$

A variância aproximada de $\widehat Y_{ASP}$ é dada por: 

$$
V_{ASP}\left(\widehat Y_{ASP}\right) \doteq \frac{N}{N-1} \frac{1}{n} \displaystyle\sum_{i \in U} (1-np_i) \left(\frac{y_i}{p_i} - Y \right)^2  p_i = V_{PO}\left(\widehat  Y_{PO}^R \right) \,\,(\#eq:eqppt14) 
$$
Vemos assim que a variância do estimador de total sob Amostragem Sequencial de Poisson é a mesma que se obteria usando o estimador de razão sob Amostragem de Poisson. A principal vantagem é que sob ASP o tamanho efetivo da amostra é fixo. Um estimador consistente desta variância é dado por:

$$
\widehat V_{ASP}\left(\widehat Y_{ASP}\right) = \frac{1}{n(n-1)} \displaystyle\sum_{i \in s}\left(\frac{y_i}{p_i} - \widehat Y_{ASP}\right)^2 (1-np_i)p_i\,\,(\#eq:eqppt15) 
$$
No Brasil, ASP foi usada para a seleção de escolas para aplicação de testes padronizados no âmbito do Sistema de Avaliação da Educação Básica - SAEB, como descrito em @Bussab1999. 


## Amostragem Sistemática com PPT - SIS

O método de *Amostragem Sistemática com PPT* consiste nos seguintes passos:

1. Acumule as medidas de tamanho na população, isto é, e faça $X_{(0)}=0$ e calcule $X_{(i)}=\displaystyle \sum_{k=1}^{i}x_k$ para $i=1,...,N$.

2. Determine “intervalos de seleção” com base no tamanho de cada unidade. Assim, o intervalo de seleção para a unidade $i$ será dado por $(X_{(i-1)};X_{(i)}]$, sendo o limite superior incluído.

3. Determine o intervalo de amostragem $\displaystyle K=\frac{X_{(N)}}{n}=$ Total dos Tamanhos/Tamanho da Amostra. Tal intervalo corresponde ao salto.

4. Selecione um número aleatório $r$ (ponto de partida) com distribuição uniforme entre 0 e $K$.

5. Selecione as unidades correspondentes aos intervalos nos quais caem os valores $r+(j-1)\times K$, para $j=1,2,...,n$. Isto é, selecione toda unidade $i$ tal que $r+(j-1)\times K \in (X_{(i-1)};X_{(i)}]$, para $j=1,2,...,n$. 

Seguem alguns cuidados a serem tomados no uso da Amostragem Sistemática com PPT:

* Verifique se alguma unidade tem tamanho $x_i$ maior que $K$. Se isto ocorrer, esta unidade seria incluída ‘com repetição’ na amostra, o que é indesejável.

* Caso alguma unidade seja tão grande que $x_i > K$, inclua esta unidade com certeza na amostra, e refaça os cálculos para $K$ com o tamanho desta unidade excluído do total e o tamanho de amostra diminuído de uma unidade.

* Repita a verificação até que nenhuma unidade tenha tamanho maior que o intervalo de seleção calculado no passo 3.

**Amostragem PPT sistemática com ordenação**

A seleção com amostragem PPT sistemática com ordenação segue os seguintes passos:

1. Faça uma ordenação das unidades da população segundo uma (ou mais) variável(is) de interesse.

2. Selecione uma amostra sistemática com PPT seguindo o algoritmo anterior.

Esta forma de implementar a Amostragem Sistemática PPT confere um efeito de ‘estratificação implícita’ pela variável (ou variáveis) usada(s) na ordenação. 

A Amostragem sistemática com PPT (com ou sem ordenação) era muito usada na prática por sua simplicidade na seleção de amostras. Porém, com o advento de modernas ferramentas computacionais que permitem selecionar com facilidade amostras PPT sem reposição usando outros métodos, tornou-se menos popular.

Quando *Amostragem Sistemática com PPT* for usada para selecionar a amostra, pode-se usar o estimador HT para o total conforme descrito na expressão \@ref(eq:eqppt2). Para esse plano amostral, a variância tem uma expressão complexa, e não há estimador consistente de variância disponível na literatura. O problema da estimação de variância sob amostragem sistemática com PPT é ainda mais difícil quando o sorteio é feito com ordenação. @Berger2003 oferece uma estratégia que pode ser considerada nesse caso.

## Amostragem PPT de Pareto - AP 

A seleção com amostragem PPT de Pareto, de acordo com [@Rosen2000], segue os seguintes passos:

1. Gere número aleatório uniforme independente $A_i$ para cada unidade $i$ da população.

2. Calcule a *probabilidade de inclusão desejável* da unidade $i: \lambda_i = n x_i/X$.

3. Calcule o número aleatório modificado $\displaystyle C_i=\frac{A_i(1-\lambda_i)}{(1-A_i)\lambda_i}$.

4. Ordene as unidades crescentemente segundo valores dos números aleatórios modificados $C_i$.

5. Selecione para a amostra as $n$ unidades com os menores valores de $C_i$.

A Amostragem PPT de Pareto - AP é o método empregado para sorteio de unidades primárias de amostragem da PNAD Contínua - ver @Freitas2014. Para tamanhos de amostra iguais, AP é mais eficiente que ASP. A implementação deste método requer os mesmos cuidados com relação a unidades muito grandes que com outros métodos PPT sem reposição. As probabilidades exatas de inclusão não são estritamente proporcionais ao tamanho, e são difíceis de calcular. Porém resultados sugerem que as aproximações consideradas no passo 2 são suficientemente boas - veja @Aires2005 - para a maioria das situações de interesse prático.

**Estimação do total sob amostragem PPT de Pareto - AP**

O estimador do total sob Amostragem PPT de Pareto - AP é dado por: 

$$
\widehat Y_{AP} = \displaystyle\sum_{i \in s}\frac{y_i}{\lambda_i} = \frac{1}{n}\sum_{i \in s}\frac{y_i}{p_i}\,\,(\#eq:eqppt16) 
$$

Note que $E_{AP} \left(\widehat Y_{AP}\right)\doteq Y$. A variância de $\widehat Y_{AP}$ e o seu respectivo estimador são dados por (Veja @Rosen2000): 

$$
V_{AP} \left(\widehat Y_{AP}\right) \doteq \frac{N}{N-1} \displaystyle \sum_{i \in U} \left(\frac{y_i}{\lambda_i} - \frac{\sum_{k \in U} y_k(1 - \lambda_k)} {\sum_{k \in U} \lambda_k(1 - \lambda_k)}\right)^2 \lambda_i(1 - \lambda_i) \,\, (\#eq:eqppt17)
$$

$$
\widehat V_{AP} \left(\widehat Y_{AP}\right) = \frac{n}{n-1} \displaystyle\sum_{i \in s} \left(\frac{y_i}{\lambda_i} - \frac{\sum_{k \in s} y_k(1-\lambda_k)} {\sum_{k \in s} (1-\lambda_k)}\right)^2 (1-\lambda_i) \,\,\, (\#eq:eqppt18) 
$$

A Tabela \@ref(tab:tabppt2) apresenta um resumo de parâmetros e respectivos estimadores para o total sob os diversos métodos de seleção com PPT apresentados neste capítulo. 

<center>
<table>
<caption>(#tab:tabppt2)Parâmetros e respectivos estimadores sob PPT</caption>
</table>
----------
Parâmetro                                Estimador
---------------------------------------- -----------------------------------     
$Y=\displaystyle\sum_{i\in U}y_i$        $\widehat Y_{HT/PPT} = \displaystyle X \times \frac{1}{n} \sum_{i \in s} \frac{y_i}{x_i}$ $\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,$ $\widehat Y_{PPTC} = \displaystyle\frac{1}{n} \sum_{i \in s} \frac{f_i y_i}{p_i}$                     $\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,$
                                         $\displaystyle\widehat Y_{PO} = \sum_{i \in s} \frac{y_i} {\pi_i} =  \frac{1}{n} \sum_{i \in s} \frac{y_i}{p_i}$
                                         $\,\,\,\,\,\,\,\,$ $\widehat Y_{PO}^R =\displaystyle \frac{N}{\widehat N} \sum_{i \in s} d_i {y_i} = N \displaystyle\frac{\sum_{i \in s} d_i {y_i}}{\sum_{i \in s} d_i }$         $\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,$ $\widehat Y_{ASP} = \displaystyle\frac{1} {n} \sum_{i \in s} \frac{y_i}{p_i}$
                                            $\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,$ $\widehat Y_{AP} = \displaystyle\sum_{i \in s}\frac{y_i}{\lambda_i} = \frac{1}{n}\sum_{i \in s}\frac{y_i}{p_i}$
                                            
$V_{PPTC}\left(\widehat Y_{PPTC}\right)$ $\widehat V_{PPTC} \left(\widehat Y_{PPTC}\right)=\displaystyle\frac{1}{n(n-1)}\displaystyle \sum_{i \in s} f_i \left( \frac{y_i}{p_i}-\widehat Y_{PPTC}\right)^2$ 

$V_{PO} \left( \widehat Y_{PO} \right)$  $\widehat V_{PO} \left( \widehat Y_{PO} \right) = \displaystyle \sum_{i \in s} \frac{(1 - \pi_i)}{\pi_i^2} y_i^2$

$V_{PO}\left(\widehat Y_{PO}^R\right)$   $\widehat V_{PO}\left(\widehat Y_{PO}^R \right) = \displaystyle\frac{1}{n(m-1)} \displaystyle \sum_{i \in s} (1 - n p_i) \left( \frac{y_i}{p_i} - \widehat Y_{PO}^R \right)^2$

$V_{ASP}\left(\widehat Y_{ASP}\right)$   $\widehat V_{ASP}\left(\widehat Y_{ASP}\right) = \displaystyle\frac{1}{n(n-1)} \displaystyle\sum_{i \in s}\left(\frac{y_i}{p_i} - \widehat Y_{ASP}\right)^2 (1-np_i)p_i$

$V_{AP} \left(\widehat Y_{AP}\right)$    $\widehat V_{AP} \left(\widehat Y_{AP}\right) =\displaystyle \frac{n}{n-1} \displaystyle\sum_{i \in s} \left(\frac{y_i}{\lambda_i} - \frac{\sum_{k \in s} y_k(1-\lambda_k)} {\sum_{k \in s} (1-\lambda_k)}\right)^2 (1-\lambda_i)$

----------
</center>

## Exercícios

**(#exr:exrppt1)** Verifique que o estimador de HT da média não é invariante sob transformações de locação. Isto é, se tomarmos $z_i=y_i+A$, então $\overline z_{HT}\ne\overline y_{HT}+A$ 

**(#exr:exrppt2)** Uma amostra foi selecionada usando o método PPT com reposição. As informações dessa amostra aparecem na Tabela \@ref(tab:tabppt3).
  
<center>
<table>
<caption>(#tab:tabppt3)Informações obtidas na amostra selecionada</caption>
</table>
----------
 Unidade    $p_i$   $y_i$   $\pi _i$
--------- ------- ------- ----------
  6         0,02     45    
 
  8         0,01     20     0,0297 
 
 14         0,03     60     0,0873 
----------
</center>

a) Calcule o valor de $\pi_i$ que está faltando; 
b) Estime o total populacional da variável de interesse, $y$, usando o estimador de Horvitz-Thompson;
b) Estime a variância da estimativa calculada em b. usando o estimador HT e o estimador alternativo apresentado;
c) Compare e comente os resultados obtidos.
  
**(#exr:exrppt3)** No arquivo fazendas_dat.rds são listadas 338 fazendas, com informações sobre a receita e a despesa de cada uma.  Suponha que não são conhecidas as informações sobre as despesas e que se deseja selecionar uma amostra de 20 fazendas para estimar a despesa média da população de fazendas.

a) Selecione uma AAS de 20 fazendas e construa um IC<sub>95%</sub> para a despesa média das fazendas;
b) Selecione uma amostra PPT com reposição de 20 fazendas, considerando a variável receita como tamanho, e construa um IC<sub>95%</sub> para a despesa média das fazendas;
c) Compare os resultados com a despesa média verdadeira das 338 fazendas e teça seus comentários.

**(#exr:exrppt4)** (@Thompson2012) Uma determinada região tem 320 lagos que somados cobrem uma área de 80km<sup>2</sup>. Num estudo sobre poluição das águas, foi selecionada uma amostra de lagos, seguindo o procedimento abaixo: 

  * Um retângulo de comprimento C e largura L foi desenhado sobre um mapa da região; 
  * Pares de números aleatórios uniformes entre 0 e 1 foram gerados. O primeiro número de cada par foi multiplicado por C e o segundo por L, dando coordenadas dentro da região em estudo. 
  * Se a coordenada “caia” sobre um lago no mapa, este era selecionado para a amostra; 
  * O procedimento foi repetido até que 4 pontos “caíssem” sobre algum lago; 
  * O primeiro lago da amostra foi selecionado 2 vezes.

Nos lagos selecionados foi medido o nível de poluição. Os resultados estão na Tabela \@ref(tab:tabppt4):

<center>
<table>
<caption>(#tab:tabppt4)Informações obtidas para os lagos selecionados</caption>
</table>
-----------             
 Lago          Poluição   Tamanho do lago 
        (partes/milhão)  (km<sup>2</sup>)
------ ---------------- -----------------
 1          2                        1,2 
 
 1          2                        1,2 
 
 2          5                        0,2 
 
 3         10                        0,5
-----------
</center>
a. Qual o tipo de amostragem utilizada? 
b. Calcule uma estimativa não viciada para a média de poluição dos lagos da região; 
c. Estime a variância do estimador utilizado.
  
**(#exr:exrppt5)** Sejam U = {U<sub>1</sub>, U<sub>2</sub>, ...,U<sub>N</sub>} uma população e y = {y<sub>1</sub>, y<sub>2</sub>, ...,y<sub>N</sub>} um vetor populacional de interesse. Uma amostra com probabilidades desiguais com reposição de tamanho n foi selecionada de U para estimar o total $Y = \sum_{i \in U} y_i$, sendo y<sub>s</sub> = {y<sub>1</sub>, y<sub>2</sub>, ...,y<sub>n</sub>} o vetor amostral obtido, e {p<sub>1</sub>, p<sub>2</sub>, ...,p<sub>N</sub>} o conjunto das probabilidades de seleção das unidades populacionais num dado sorteio, tais que $\sum_{i \in U} p_i=1$. Antes de efetivar a observação da amostra, y<sub>1</sub>, y<sub>2</sub>, ...,y<sub>n</sub> são variáveis aleatórias independentes e identicamente distribuídas - IID.

a)  Descreva a distribuição de probabilidades comum dos y<sub>i</sub> e calcule a esperança e a variância dessa distribuição.
b)  Obtenha um estimador não viciado para o total Y com base na amostra e prove que esse estimador é mesmo não viciado, usando a distribuição obtida em a..

       
**(#exr:exrppt6)** Considere a população de empresas descrita na Tabela \@ref(tab:tabppt5). Utilizando o R, resolva as questões.

a)  Selecione uma amostra aleatória simples sem reposição de 3 empresas;
b)  Use a amostra selecionada em a. para estimar a Receita média das empresas na população e o correspondente CV;
c)  Selecione uma amostra com probabilidades proporcionais ao Pessoal Ocupado, com reposição, de 3 empresas;
d)  Use a amostra selecionada em c. para estimar a Receita média das empresas na população e o correspondente CV;
e)  Compare os resultados das duas amostras com os valores verdadeiros e comente esses resultados.
  
<center>
<table>
<caption>(#tab:tabppt5)Dados populacionais das empresas</caption>
</table>
----------
 Empresa   Pessoal Ocupado   Receita
--------- ---------------- ---------
     1            250         8.000

     2            350        12.000

     3            175         6.000

     4            310        10.000

     5            160         5.000

     6            350        18.000

     7            375        18.000

     8            150         4.000

     9            275         9.000

    10            240         8.000
----------
</center>
       
**(#exr:exrppt7)** Seja o arquivo de dados MunicBR_dat.rds. Selecione uma amostra de 10 municípios com PPT, utilizando como medida de tamanho a variável população (Pop).

a)  Estime o total da população para o Brasil;
b)  Compare com o valor verdadeiro e comente esse resultado surprendente. Por que isso ocorre?
