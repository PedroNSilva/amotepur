
#Amostragem com Probabilidades Desiguais

A amostragem com probabilidades desiguais é usada porque as unidades de amostragem têm variação de tamanho e ignorar a variação de tamanho pode resultar em desenhos ineficientes. Neste sentido, é usada quando a variação dos tamanhos for grande, tiver informação auxiliar precisa sobre tamanhos disponível e o tamanho for fortemente correlacionado com as variáveis de interesse. 

Trataremos inicialmente o caso de amostragem com probabilidades proporcioanis ao tamanho. Outros casos serão vistos mais adiante, tais como: amostragem estratificada com alocação desproporcional, seleção de um morador para ser entrevistado em cada domicílio, amostras de números telefônicos (“random digit dialling samples”). 

##Amostragem com Probabilidades Proporcionais ao Tamanho (PPT)

Seja a população denotada por $U = \{ 1; 2; ...; N\}$ e que os valores de uma variável auxiliar $x_i$, $i \in U$, são conhecidos para todos os elementos da população.

Se $x_i>0\,\,\forall\, i \in U$, então podemos usar esta variável como uma medida de tamanho das unidades populacionais.

Se $x$ for correlacionada com a(s) variável(is) de estudo $y$, então podemos esperar aumentar a eficiência fazendo seleção com PPT comparada com AAS.

Por enquanto, vamos assumir que é possível selecionar amostras de acordo com um plano amostral tal que: $\pi_i \propto x_i\,\,\forall \,\, i=1,\dots, N$; $\pi_{ij} > 0 \,\,\forall \,\, i \neq j \in U$.

Mais tarde, discutiremos algoritmos para garantir que essas condições sejam cumpridas.


###Estimação do Total Populacional

Sejam $\delta_i$ as variáveis indicadoras de inclusão na amostra $s$, para todo $i \in U$.

Para um plano amostral $p(s)$ qualquer sabemos que: $E(\delta_i) = \pi_i$, $E(\delta_i \delta_j) = \pi_{ij}$,

$V(\delta_i) = \pi_i(1 - \pi_i)$ e $COV(\delta_i,\delta_j) = \pi_{ij}- \pi_i \pi_j = \Delta_{ij}$

O Estimador de Horvitz-Thompson para estimar o total populacional  $Y=\displaystyle\sum_{i \in U}y_i$ é dado por:

\begin{equation}\widehat Y=\displaystyle\sum_{i \in s}\frac{y_i}{\pi_i}=\widehat Y_{HT} (\#eq:eqppt1) \end{equation} 

Portanto, cada unidade da amostra tem um peso amostral igual ao inverso da respectiva probabilidade de inclusão na amostra: $w_i=\pi_i^{-1}\,\,\,\forall\,\,i \in U$.

O estimador $HT$ do total é não viciado, isto é: $E(\widehat Y_{HT})=Y$  e sua variância na forma de Horvitz-Thompson é dada por:

\begin{equation}V(\widehat Y_{HT})=\sum_{i \in U}\sum_{j \in U}(\pi_{ij}-\pi_i\pi_j)\left(\frac{y_i}{\pi_i}\frac{y_j}{\pi_j}\right)(\#eq:eqppt2) \end{equation}.

Um estimador não viciado da variância do estimador $HT$ é: \begin{equation}\widehat V(\widehat Y_{HT})=\sum_{i \in s}\sum_{j \in s}\frac{(\pi_{ij}-\pi_i\pi_j)}{\pi_{ij}}\left(\frac{y_i}{\pi_i}\frac{y_j}{\pi_j}\right)(\#eq:eqppt3) \end{equation}.

Uma fórmula alternativa para a variância do estimador HT, válida para planos amostrais de tamanhos fixos, é chamada SYG (Sen-Yates-Grundy):

\begin{equation}V_{SYG}(\widehat Y_{HT})=-\frac{1}{2}\sum_{i \in U}\sum_{j \in U}(\pi_{ij}-\pi_i\pi_j)\left(\frac{y_i}{\pi_i}-\frac{y_j}{\pi_j}\right)^2(\#eq:eqppt4) \end{equation}.

Um estimador não viciado alternativo de variância obtido a partir da fórmula de Sen-Yates-Grundy é dado por:

\begin{equation}\widehat V_{SYG}(\widehat Y_{HT})=-\frac{1}{2}\sum_{i \in s}\sum_{j \in s}\frac{(\pi_{ij}-\pi_i\pi_j)}{\pi_{ij}}\left(\frac{y_i}{\pi_i}-\frac{y_j}{\pi_j}\right)^2(\#eq:eqppt5) \end{equation}.

Note que esta fórmula não coincide com o estimador de variância derivado a partir da expressão de Horvitz-Thompson.

Da fórmula Sen-Yates-Grundy da variância, podemos observar que a variância seria nula caso $y_i/\pi_i = y_j/\pi_j$ para todo $i \neq j \in U$.

Portanto, se $\pi_i \propto x_i$ e $y_i \propto x_i \,\,\forall i \in U$, então $V_{SYG}(\widehat Y_{HT})=0$ .

Isto indica que se $y$ e $x$ forem aproximadamente proporcionais (logo, altamente correlacionadas), a variância do estimador $HT$ do total será pequena.

Também se pode notar também que a variância deve ser pequena quando $\pi_{ij}\doteq\pi_i\pi_j\,\,\forall \,i\neq j \in U$.

Acontece que $\pi_{ij}\doteq\pi_i\pi_j\,\,\forall\,i\neq j \in U$ implica em indicadores de inclusão das unidades $i$ e $j$ independentes.

Um plano amostral satisfazendo essa propriedade é a *‘Amostragem de Poisson’*.

Entretanto, *Amostragem de Poisson* não é eficiente, como veremos, devido à variabilidade do tamanho amostral.

A chave para eficiência da amostragem PPT é ter medidas de tamanho ($x$) altamente correlacionadas com respostas de interesse na pesquisa ($y$). 

Cabe registrar que ambos os estimadores de variância para o estimador de total podem tomar valores negativos. Evidências empíricas sugerem que isto ocorre mais raramente com o estimador de Sen-Yates-Grundy.

###Estimação da Média Populacional

Quando o tamanho da população $N$ é conhecido, o estimador “natural” da média populacional baseado no estimador $HT$ do total seria:
\begin{equation}\overline y_{HT}=\widehat Y_{HT}/N=\frac{1}{N}\displaystyle\sum_{i \in s}\frac{y_i}{\pi_i}=\sum_{i \in s}w_i^{HT}y_i(\#eq:eqppt6) \end{equation}.

onde $w_i^{HT}= \pi_i^{-1}/N$.

As fórmulas de variância e estimador da variância seguem diretamente das anteriores mediante divisão por $N^2$.

Mesmo quando o tamanho $N$ da população é conhecido, ele pode ser estimado pelo estimador do tipo razão da média populacional, dado por $\widehat N_{HT}=\displaystyle\sum_{i \in s}\frac{1}{\pi_i}$.

Portanto, um estimador tipo razão para a média é dado por:

\begin{equation}\overline y_R=\widehat Y_{HT}/\widehat N_{HT}= \frac{\displaystyle\sum_{i \in s}y_i/\pi_i}{\displaystyle\sum_{i \in s}1/\pi_i}=\frac{\displaystyle\sum_{i \in s}w_i^{HT}y_i}{\displaystyle\sum_{i \in s}w_i^{HT}}=\sum_{i \in s}w_i^Ry_i(\#eq:eqppt7) \end{equation}.

onde $w_i^R=w_i^{HT}/\displaystyle\sum_{j \in s}w_j^{HT}$.

Sua variância é aproximada por:

\begin{equation}V(\overline y_R)\doteq\frac{1}{N^2}\sum_{i \in U}\sum_{j \in U}(\pi_{ij}-\pi_i\pi_j)\left(\frac{y_i-\overline Y}{\pi_i}\right)\left(\frac{y_j-\overline Y}{\pi_j}\right)(\#eq:eqppt8) \end{equation}.

Um estimador aproximadamente não viciado para essa variância é dado por: 

\begin{equation}\widehat V(\overline y_R)\doteq\frac{1}{N^2}\sum_{i \in s}\sum_{j \in s}\frac{(\pi_{ij}-\pi_i\pi_j)}{\pi_{ij}}\left(\frac{y_i-\overline y_R}{\pi_i}\right)\left(\frac{y_j-\overline y_R}{\pi_j}\right)(\#eq:eqppt9) \end{equation}.

Cabe registrar que para alguns planos amostrais, os dois estimadores são equivalentes, isto é, $\overline y_R=\overline y_{HT}$ porque $w_i^R=w_i^{HT}$.

O *estimador de razão da média* é geralmente mais eficiente que o de $HT$.

O estimador tipo razão da média é invariante sob transformações de locação. Isto é, se tomarmos $z_i=y_i+A$, então $\overline z_R=\overline y_R+A$ .

Em planos amostrais auto-ponderados, isto é, em que os $\pi_i$ são constantes, os pesos $w_i$ ficam todos iguais a $1/n$ para ambos os estimadores de média ($HT$ e de Razão). Esta é uma vantagem de planos deste tipo, pois a tarefa de estimação fica simplificada.

O Quadro \@ref(tab:tabppt1) apresenta um resumo da estimação de parâmetros média e total sob PPT. 

$$\begin{array}{|c|c|c|}\hline
\textrm{Parâmetro} & \textrm{Estimador PPT}  

\\\hline \overline{Y}=\displaystyle\sum_{i\in U}y_i/N & \overline y_{HT}=\frac{1}{N}\displaystyle\sum_{i \in s}\frac{y_i}{\pi_i}=\sum_{i \in s}w_i^{HT}y_i
\\ &\overline y_R=\frac{\displaystyle\sum_{i \in s}w_i^{HT}y_i}{\displaystyle\sum_{i \in s}w_i^{HT}}=\displaystyle\sum_{i \in s}w_i^Ry_i

\\\hline Y=\displaystyle\sum_{i\in U}y_i &\widehat Y=\displaystyle\sum_{i \in s}\frac{y_i}{\pi_i}=\widehat Y_{HT} 

\\\hline V(\overline y_{HT})=\frac{1}{N^2}V(\widehat Y_{HT}) & \frac{1}{N^2}\widehat V(\widehat Y_{HT})

\\\hline V(\overline y_R)\doteq\frac{1}{N^2}\displaystyle\sum_{i \in U}\sum_{j \in U}(\pi_{ij}-\pi_i\pi_j)\left(\frac{y_i-\overline Y}{\pi_i}\right)\left(\frac{y_j-\overline Y}{\pi_j}\right) & \widehat V(\overline y_R)\doteq\frac{1}{N^2}\displaystyle\sum_{i \in s}\sum_{j \in s}\frac{(\pi_{ij}-\pi_i\pi_j)}{\pi_{ij}}\left(\frac{y_i-\overline y_R}{\pi_i}\right)\left(\frac{y_j-\overline y_R}{\pi_j}\right)

\\\hline V(\widehat Y_{HT})=\displaystyle\sum_{i \in U}\sum_{j \in U}(\pi_{ij}-\pi_i\pi_j)\left(\frac{y_i}{\pi_i}\frac{y_j}{\pi_j}\right) & \widehat V(\widehat Y_{HT})=\displaystyle\sum_{i \in s}\sum_{j \in s}\frac{(\pi_{ij}-\pi_i\pi_j)}{\pi_{ij}}\left(\frac{y_i}{\pi_i}\frac{y_j}{\pi_j}\right)  

\\\hline V_{SYG}(\widehat Y_{HT})=-\frac{1}{2}\displaystyle\sum_{i \in U}\sum_{j \in U}(\pi_{ij}-\pi_i\pi_j)\left(\frac{y_i}{\pi_i}-\frac{y_j}{\pi_j}\right)^2 & \widehat V_{SYG}(\widehat Y_{HT})=-\frac{1}{2}\displaystyle\sum_{i \in s}\sum_{j \in s}\frac{(\pi_{ij}-\pi_i\pi_j)}{\pi_{ij}}\left(\frac{y_i}{\pi_i}-\frac{y_j}{\pi_j}\right)^2 

\\\hline (\#tab:tabppt1) \end{array}$$


###Maneiras de Selecionar Amostras com PPT

A seleção de amostras com PPT pode ser com reposição ou sem reposição. 
Na amostragem PPT com reposição há uma maior simplicidade de seleção e de estimação, porém a eficiência não é plena. Já na amostragem com PPT sem reposição há várias alternativas de seleção e mais complexidade e dificuldade na estimação de precisão, porém a eficiência é plena e não tem o problema da repetição de unidade selecionada.  

###Amostragem PPT Com Reposição: Método dos Totais Cumulativos

O algoritmo para seleção da amostra pelo método dos totais cumulativos consiste nos seguintes passos: 

1. Acumule as medidas de tamanho na população, isto é, faça $X_{(0)} = 0$ e calcule $X_{(K)}=\displaystyle\sum_{i=1}^{k}x_i$ para $k=1,...,N$.

2. Determine “intervalos de seleção” com base no tamanho de cada unidade. Assim, o intervalo de seleção para a unidade $k$ será dado por $(X_{(k-1)} ; X_{(k)}]$, sendo o limite superior incluído. 

3. Selecione um número aleatório $r$ com distribuição uniforme entre 0 e $X_{(N)}$, a soma dos tamanhos na população.

4. Selecione a unidade correspondente ao intervalo no qual cai o número aleatório $r$, isto é, selecione $k$ tal que
$r \in (X_{(k-1)} ; X_{(k)}]$.

5. Repita os passos 3 e 4 tantas vezes quantas forem necessárias para obter a amostra do tamanho $n$ desejado.

A *Amostra selecionada* é constituída pelas unidades $k_1, ..., k_j, ..., k_n$.

Cabe comentar que Amostragem PPT Com Reposição é um método muito simples de implementar, que pode implicar seleção repetida da(s) mesma(s) unidade(s), com tamanho efetivo da amostra (número de unidades distintas na amostra) aleatório, sendo sempre possível encontrar um plano amostral com as mesmas probabilidades de inclusão mais eficiente que este. 

**(#exm:exmppt1)** Considere uma população de $N=6$ Fazendas, com as respectivas áreas apresentadas na Tabela \@ref(tab:tabppt2). Extrair uma amostra de $n=3$ fazendas com PPT $\propto$  área, usando o método dos totais cumulativos.

$$\begin{array}{|l|c|c|c|c|}\hline \text{Fazenda} & \text{Área} & \text{Tamanho  Acumulado} & \text{Limite Inferior do Intervalo} & \text{Limite Superior do Intervalo} \\\hline 1 & 50 & 50 & 0 & 50\\\hline 2 & 1000 & 1050 & 51 & 1050\\\hline 3 & 125 & 1175 &1051 &1175\\\hline 4 & 300 & 1475 & 1176 & 1475 \\\hline 5 & 500 & 1975 & 1476 & 1975\\\hline 6 & 25 & 2000 & 1976 & 2000\\\hline\end{array}$$
Supondo que os 3 números aleatórios entre 0 e 2000 foram: 654, 1230 e 1555. Então as fazendas 2, 4 e 5 foram as selecionadas. 

Caso os 3 números aleatórios entre 0 e 2000 fossem: 122, 754 e 1980. Então as fazendas 2 e 6 seriam as selecionadas, com a fazenda 2 sendo selecionada duas vezes.  

**(#exm:exmppt2)** Diagrama de dispersão com dados de quantidade colhida e área plantada de cana de açúcar, apresentado na Figura \@ref(fig:diagrama_ppt).


<div class="figure">
<img src="Figuras/diagrama_ppt.PNG" alt="Diagrama de dispersão" width="249" />
<p class="caption">(\#fig:modclas)Diagrama de dispersão</p>
</div>



####Estimação do Total Sob Amostragem PPT Com Reposição

O estimador do total sob amostragem PPT com reposição é dado por: 
\begin{equation}\widehat Y_{PPTC}=\frac{1}{n}\sum_{j=1}^{n}\frac{y_{k_j}}{p_{k_j}}(\#eq:eqppt10) \end{equation}. 
onde $j$ representa o número do sorteio, e $p_i = x_i / X$ é o tamanho relativo da unidade $i \in U$.

A variância de $\widehat Y_{PPTC}$ e o seu respectivo estimador são apresentados a seguir: 

\begin{equation}V_{PPTC}\left(\widehat  Y_{PPTC}\right)=\frac{1}{n}\displaystyle\sum_{i \in U}\left(\frac{y_i}{p_i}-Y\right)^2 p_i(\#eq:eqppt11) \end{equation}.


\begin{equation}\widehat V_{PPTC}\left(\widehat  Y_{PPTC}\right)=\frac{1}{n(n-1)}\displaystyle\sum_{j=1}^{n}\left(\frac{y_{k_j}}{p_{k_j}}-\widehat Y_{PPTC}\right)^2(\#eq:eqppt12) \end{equation}.

###Amostragem PPT de Poisson

O método PPT de Poisson é uma generalização simples do método de *Amostragem Binomial* e consiste nos seguintes passos:

1. Para cada unidade populacional, determine o valor da probabilidade de inclusão $\pi_i = n x_i/X$.

2. Para cada unidade da população selecione, de forma independente, um número aleatório $A_i$ com distribuição uniforme no intervalo [0;1].

3. Inclua a unidade $i$ na amostra se $A_i \le \pi_i$. 

Alguns cuidados a serem observados na Amostragem PPT de Poisson 

* Verifique se nenhuma unidade tem tamanho $x_i$ maior que $X/n$. Se isto ocorrer, a ‘probabilidade de inclusão’ desta unidade seria maior que 1, o que é impossível.

* Caso alguma unidade $j$ seja tão grande que $x_j>X/n$ inclua esta unidade com certeza (isto é, faça $\pi_j = 1$), e refaça os cálculos dos $\pi_i$ com o tamanho desta unidade excluído do total e o tamanho de amostra diminuído de uma unidade.

* Repita a verificação até que nenhuma unidade tenha tamanho maior que o intervalo de seleção.

A Amostragem PPT de Poisson é pouco usada na prática devido à variabilidade do tamanho da amostra. É um metodo menos eficiente que outros métodos de seleção PPT sem reposição.

Um método moderno que corrige este defeito é “Amostragem Sequencial de Poisson” (ASP) - veja [@Ohlsson1998].


####Estimador Simples de Total sob Amostragem de Poisson

O estimador do total sob Amostragem de Poisson é dado por: 

\begin{equation}\widehat Y_{PO}=\sum_{i \in s}\frac{y_i}{\pi_i}(\#eq:eqppt13) \end{equation}.

A variância de $\widehat Y_{PO}$ e o seu respectivo estimador são apresentados a seguir: 

\begin{equation}V\left(\widehat Y_{PO}\right)=\displaystyle\sum_{i \in U}\pi_i(1-\pi_i)\left(\frac{y_i}{\pi_i}\right)^2=\displaystyle\sum_{i \in U}\frac{(1-\pi_i)}{\pi_i}y_i^2(\#eq:eqppt14) \end{equation}.

\begin{equation}\widehat V\left(\widehat Y_{PO}\right)=\displaystyle\sum_{i \in s}(1-\pi_i)\left(\frac{y_i}{\pi_i}\right)^2=\displaystyle\sum_{i \in s}\frac{(1-\pi_i)}{\pi_i^2}y_i^2(\#eq:eqppt15) \end{equation}.

Também é possível usar estimador de total tipo razão sob Amostragem de Poisson, que é mais eficiente do que o estimador $HT$. 


###Amostragem Sequencial de Poisson (ASP)

O método de Amostragem Sequencial de Poisson (ASP) consiste nos seguintes passos:

1. Gerar número aleatório uniforme independente $A_i$ para cada unidade $i$ da população.

2. Calcular medida de tamanho relativo $p_i$ da unidade $i$.

3. Calcular número aleatório modificado $C_i = A_i / p_i$.

4. Ordenar as unidades crescentemente segundo valores dos números aleatórios modificados $C_i$ .

5. Selecionar para a amostra as $n$ unidades com os menores valores de $C_i$ .


####Estimação com Amostragem Sequencial de Poisson

O estimador do total sob Amostragem Sequencial de Poisson é dado por: 

\begin{equation}\widehat Y_{ASP}=\frac{1}{n}\sum_{i \in s}\frac{y_i}{p_i}(\#eq:eqppt16) \end{equation}.

A variância de $\widehat Y_{ASP}$ e o seu respectivo estimador são apresentados a seguir: 

\begin{equation}V\left(\widehat Y_{ASP}\right)=\frac{1}{n}\frac{N}{N-1}\displaystyle\sum_{i \in U}\left(\frac{y_i}{p_i}-Y\right)^2(1-np_i)p_i(\#eq:eqppt17) \end{equation}.

\begin{equation}\widehat V\left(\widehat Y_{ASP}\right)=\frac{1}{n(n-1)}\displaystyle\sum_{i \in s}\left(\frac{y_i}{p_i}-\widehat Y_{ASP}\right)^2 (1-np_i)p_i(\#eq:eqppt18) \end{equation}.

###Amostragem Sistemática com PPT

O método de Amostragem Sistemática com PPT consiste nos seguintes passos:

1. Acumule as medidas de tamanho na população, isto é, e faça $X_{(0)}=0$ e calcule $X_{(k)}=\displaystyle \sum_{i=1}^{k}x_i$ para $k=1,...,N$.

2. Determine “intervalos de seleção” com base no tamanho de cada unidade. Assim, o intervalo de seleção para a unidade $k$ será dado por $(X_{(k-1)};X_{(k)}]$, sendo o limite superior incluído.

3. Determine o intervalo de amostragem (salto) $K=\frac{X_{(N)}}{n}=\frac{\textrm{Total dos Tamanhos}}{\textrm {Tamanho da Amostra}}$.

4. Selecione um número aleatório $r$ (ponto de partida) com distribuição uniforme entre 0 e $K$.

5. Selecione as unidades correspondentes aos intervalos nos quais caem os valores $r+(j-1)\times K$, para $j=1,2,...,n$. Isto é, selecione toda unidade $i$ tal que $r+(j-1)\times K \in (X_{(i-1)};X_{(i)}]$, para $j=1,2,...,n$. 

Seguem alguns cuidados a serem tomados no uso da Amostragem Sistemática com PPT:

* Verifique se nenhuma unidade tem tamanho $x_i$ maior que $K$. Se isto ocorrer, esta unidade seria incluída ‘com repetição’ na amostra, o que é indesejável.

* Caso alguma unidade seja tão grande que $x_i > K$ inclua esta unidade com certeza, e refaça os cálculos para $K$ com o tamanho desta unidade excluído do total e o tamanho de amostra diminuído de uma unidade.

* Repita a verificação até que nenhuma unidade tenha tamanho maior que o intervalo de seleção.


###Amostragem PPT Sistemática com Ordenação

A seleção com amostragem PPT sistemática com ordenação segue os seguintes passos:

1. Faça uma ordenação das unidades da população segundo uma (ou mais) variável(is) de interesse.

2. Selecione uma amostra sistemática com PPT seguindo o algoritmo anterior.

Esta forma de implementar a Amostragem Sistemática PPT confere um efeito de ‘estratificação implícita’ pela variável (ou variáveis) usada(s) na ordenação.

Cabe registrar os seguintes comentários:

1. Amostragem sistemática com PPT é muito usada na prática por sua simplicidade na seleção da amostra.

2. Amostragem sistemática PPT tem desvantagens quanto à estimação de variâncias. Não há estimador de variância não viciado sob este plano amostral.

3. Com ordenação prévia da população por alguma outra característica, amostragem sistemática PPT confere efeito de estratificação implícita da amostra, podendo aumentar sua eficiência. 


###Amostragem PPT de Pareto (AP) 

A seleção com amostragem PPT de Pareto, de acordo com [@Rosen2000], segue os seguintes passos:

1. Gerar número aleatório uniforme independente $A_i$ para cada unidade $i$ da população.

2. Calcular a *probabilidade de inclusão desejável* da unidade $i: \lambda_i = n x_i/X$.

3. Calcular número aleatório modificado $C_i=\frac{A_i(1-\lambda_i)}{(1-A_i)\lambda_i}$.

4. Ordenar as unidades crescentemente segundo valores dos números aleatórios modificados $C_i$.

5. Selecionar para a amostra as $n$ unidades com os menores valores de $C_i$.

Seguem algumas considerações sobre Amostragem PPT de Pareto (AP)

1. Este é o método empregado para sorteio de unidades primárias de amostragem na PNAD Contínua.

2. Para tamanhos de amostra iguais, é mais eficiente que ASP.

3. Mesmos cuidados com relação a unidades muito grandes que com outros métodos PPT sem reposição são necessários.

4. Probabilidades exatas de inclusão não são estritamente proporcionais ao tamanho, e são difíceis de calcular.

5. Resultados quanto a estimadores são assintóticos e vício pode ocorrer com pequenas amostras.


####Estimação com Amostragem PPT de Pareto (AP)

O estimador do total sob Amostragem PPT de Pareto (AP) é dado por: 

\begin{equation}\widehat Y_{AP}=\displaystyle\sum_{i \in s}\frac{y_i}{\lambda_i}= \frac{1}{n}\sum_{i \in s}\frac{y_i}{p_i}(\#eq:eqppt19) \end{equation}.

Note que $E\left(\widehat Y_{AP}\right)\doteq Y$.

A variância de $\widehat Y_{AP}$ e o seu respectivo estimador são apresentados a seguir: 

\begin{equation}V\left(\widehat Y_{AP}\right)\doteq \frac{N}{N-1}\displaystyle\sum_{i \in U}\left(\frac{y_i}{\lambda_i}-\frac{\sum_{k \in U} y_k(1-\lambda_k)}{\sum_{k \in U} \lambda_k(1-\lambda_k)}\right)^2\lambda_i(1-\lambda_i)(\#eq:eqppt20) \end{equation}.
\begin{equation}\widehat V\left(\widehat Y_{AP}\right)= \frac{n}{n-1}\displaystyle\sum_{i \in s}\left(\frac{y_i}{\lambda_i}-\frac{\sum_{k \in s} y_k(1-\lambda_k)}{\sum_{k \in s} (1-\lambda_k)}\right)^2(1-\lambda_i)(\#eq:eqppt21) \end{equation}.
(Veja [@Rosen2000]).


##Exercícios

**(#exe:exeppt1)** Verifique que o estimador de $HT$ da média não é invariante sob transformações de locação. Isto é, se tomarmos $z_i=y_i+A$, então $\overline z_{HT}\ne\overline y_{HT}+A$ 


