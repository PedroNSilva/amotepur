# Visão Geral da Amostragem e Estimação

## Definições e Notação para População de Pesquisa


No que se segue são introduzidas algumas definições e notação necessárias para o prosseguimento da teoria da amostragem. 

Chama-se *população* qualquer conjunto contendo um número finito $N$ de elementos populacionais por meio de alguma característica em comum. Os elementos deste conjunto serão denominados *unidades da população*, e o conjunto de $N$ rótulos distintos será representado por $U=\{1,2,\dots,i,\dots,N\}$, sendo: $N$ o tamanho da população de pesquisa; e $i$ o rótulo para a unidade genérica da população.

São exemplos comuns de populações sobre as quais se realizam pesquisas: domicílios de certa localidade; indústrias instaladas num certo país; fazendas situadas num certo estado; alunos da rede escolar estadual. 

Já foi enfatizado no capítulo anterior a importância de uma definição clara e precisa da população alvo da pesquisa. No entanto, ao estudar *amostragem*, o maior interesse está voltado para o problema de estimar ou inferir certas quantidades ou parâmetros de diversas características numéricas (variáveis) que podem ser medidas ou observadas para cada unidade da população.^[Mesmo as variáveis categóricas podem ser também transformadas em características numéricas que assumem valor *zero* (se à unidade a ser analisada não for atribuída a categoria em questão) e *um* (se à unidade analisada for atribuída a categoria em questão).]

De fato, cada característica numérica dá origem a um vetor populacional, que é o conjunto de valores numéricos da variável considerada correspondente a cada uma das unidades da população. Por exemplo, se $y$ é a variável de pesquisa / de interesse e $y_i$ é o valor da variável $y$ para a unidade $i$, então $Y_U=\{y_1,y_2,\dots,y_i,\dots,y_N\}$ é o vetor populacional gerado pela variável $y$.

Pelo exposto, deve ficar claro que a observação de várias variáveis de uma mesma população vai gerar diversos vetores populacionais, cada um correspondendo a uma das variáveis observadas. 

Em muitos casos, o interesse em estudar determinada população resume-se à necessidade de conhecer os valores de alguns *parametros* de uma ou mais variáveis associadas àquela população. Esses parâmetros-alvo (de interesse) podem ser quaisquer funções dos valores dos vetores populacionais, porém o caso mais comum é o interesse em estimar totais, médias, proporções, razãoes ou mesmo variâncias, covariâncias e correlações, sendo raros os casos de interesse por outros parâmetros.  

Os principais *parâmetros-alvo* (de interesse) podem ser representados por meio das seguintes funções dos valores:  


$Y=\displaystyle\sum_{i=1}^{N}y_i=\sum_{i\in U}y_i\quad$  o total populacional da variável $y$

$\overline{Y}=\displaystyle \frac{Y}{N}=\frac{1}{N}\sum_{i\in U}y_i\quad$  a média populacional da variável $y$ 

$S^2_y=\displaystyle\frac{1}{N-1}\sum_{i\in U}({y_i-\overline{Y}})^2=\frac{1}{N-1}\left[\sum_{i\in U}{y_i}^2-N\overline{Y}^2\right]\quad$   a variância populacional da variável $y$

Seja $z$ outra variável de pesquisa, tomando valores $z_i$, $i\in U$

$R={\frac{\displaystyle\sum_{i\in U}y_i}{\displaystyle\sum_{i\in U}z_i}}\quad$   a razão populacional das variáveis $y$ e $z$

$S_{yz}=\displaystyle\frac{1}{N-1}\sum_{i\in U}({y_i-\overline{Y}})({z_i-\overline{Z}})=\frac{1}{N-1}\left[\sum_{i\in U}{y_i}{z_i}-N\,\overline{Y}\,\overline{Z}\right]\quad$   a covariância populacional das variáveis $y$ e $z$   

${\rho}_{yz}=\frac{S_{yz}}{S_y S_z}\quad$ o coeficiente de correlação populacional das variáveis $y$ e $z$.

Até agora foram apresentadas as definições de alguns parâmetros da população que se deseja conhecer. No entanto, para conhecer exatamente o valor de qualquer dos parâmetros definidos, seria necessário conhecer todos os valores daquela população. Isto só seria possível mediante a realização de um Censo no qual a característica fosse medida ou observada para cada uma das unidades da população. 

Por outro lado, pode ser que estimativas desses parâmetros, com margem de erro conhecidas e controladas, sirvam para os propósitos a que se destinam. Neste caso, então, uma pesquisa por *amostragem* poderia resolver o problemacom vantagens em relação a um Censo.

De agora em diante, admitir-se-á sempre que a situação enfrentada é tal que basta conhecer *estimativas* dos parâmetros de interesse, bem como indicações da margem de erro a que tais estimativas estão sujeitas. 

A seguir, tomando por base a ideia de obter *estimativas* dos parâmetros de interesse, serão apresentados os principais conceitos relacionados com a *amostragem de populações finitas*.

## Amostra 

Uma *amostra* $s=\{i_1, i_2,\dots, i_n\}$ é qualquer *subconjunto* não vazio de unidades da população $U (s\subset U)$ selecionadas para observação visando estimar os parâmetros de interesse.

Uma amostra de tamanho $n$ é uma amostra contendo $n$ *unidades* selecionadas da população $U$, sendo $1\leq n \leq N$.

$i\in s$ designa que a unidade $i$ foi incluída na amostra.

Conforme já foi dito, no entanto, somente quando a seleção das unidades integrantes da amostra for baseada em regras de aleatorização bem definidas, é que as estimativas obtidas a partir da amostra poderão ter sua margem de erro controlada, e a estimação dos parâmetros poderá ser justificada em bases científicas. Por isso, serão consideradas no contexto deste livro somente amostras probabilísticas, isto é, amostras selecionadas com base em regras de aleatorização bem definidas. 

Chamando de $i$ a unidade efetivamente selecionada após a realização de experiência aleatória e representado por $y_i$ o valor da variável $y$ observado em $i$, nota-se que $y_i$ é uma *variável aleatória* que pode assumir valores no conjunto  $Y_U=\{y_1,y_2,\dots,y_N\}$.

No que se segue, $y_i$ estará sempre associado à seleção de uma amostra, que é uma experiência aleatória. 

Os dados amostrais para a variável $y$ serão representados por $\{y_{i_1},y_{i_2},\dots,y_{i_n}\}$

$t(s)=t=\displaystyle\sum_{i\in s}y_i\quad$  o total (soma) amostral da variável $y$

$\overline{y}=\displaystyle \frac{t(s)}{n}=\frac{1}{n}\sum_{i\in s}y_i\quad$  a média amostral da variável $y$. 

##Estimação

Prara tratar de estimação a ideia é introduzir uma definição do termo *estimador* e suas propriedades. 

Um estimador é uma função real das variáveis aleatórias. Portanto, um estimador é também uma variável aleatória. 

Um valor observado do estimador para uma particular determinação da amostra será chamdo de *estimativa*.  

Diz-se que um estimador $\hat{\theta}$ é *não viciado* ou *não tendencioso* ou *não viesado* para um certo parâmetro $\theta$ quando seu valor esperado for igual ao parâmetro $\theta$, isto é, quando $E(\hat{\theta})= \theta$.

É essencial ter algum critério para a escolha de estimadores. 

*Estimadores* devem ser *não viciados*, ou ao menos aproximadamente não viciados. Vício é uma propriedade indesejada em estimadores, pois significa que estimador não é centrado no alvo de inferência.

No contexto da Amostragem, diferente do contexto da Inferência Estatística, não se estabelece uma distribuição e os parâmetros que se deseja estimar não são responsáveis pela especificação de um modelo. O que se faz é, usando um princípio de simetria, 
construir funções dos valores da amostra similares às que definem os parâmetros de interesse, e verificar as propriedades dessas funções como estimadores dos parâmetros. 

Suponha que o parâmetro-alvo é o *total populacional* $Y$. O objetivo principal é usar os *dados amostrais* $\{y_1,y_2,\dots,y_i,\dots,y_n\}$ para *estimar* $Y=\displaystyle\sum_{i\in U}y_i$.

Um objetivo secundário é conseguir medir / estimar também a *precisão / margem de erro da estimativa* produzida para $Y$.

Um *estimador linear* $\hat{Y_w}$  é uma combinação linear dos valores amostrais $y_i$ com *pesos* $w_i$, isto é: $\hat{Y_w}=\displaystyle\sum_{i\in s}{w_i}{y_i}$
	 
Precisamos de critérios para determinar os pesos $w_i$. 


### Amostragem Probabilística

A *amostragem probabilística* é um procedimento de amostragem satisfazendo as condições enumeradas a seguir:

1. O espaço amostral $S$, o conjunto de todas as amostras $s$ possíveis, é bem definido.

2. Uma probabilidade $p(s)$ *conhecida (ou calculável)* é associada a cada amostra $s\in S$, e $\displaystyle\sum_{s\in S}p(s)=1$.

3. Cada unidade $i\in U$ tem uma probabilidade positiva de ser selecionada para a amostra, isto é: $\pi_i=P(i\in s)>0$ $\forall i\in U$.

4. Uma única amostra $s$ $(s\in S)$ é selecionada para observação usando um mecanismo de aleatorização (sorteio) tal que a amostra $s$ é escolhida com probabilidade $p(s)$.

5. As probabilidades $\pi_i$ de inclusão na amostra e outros aspectos da estrutura do plano amostral são levadas em conta ao fazer inferência sobre os parâmetros populacionais.


**Exemplo 2.1:** 

Considere os dados de uma população fictícia de 4 unidades $(N=4)$ mulheres, de quem foi indagado o número de filhos tidos vivos ($y$).

$$\begin{array}{|l|c|c|c|c|c|}\hline \textrm{Rótulo da unidade}\,\, i & 1 & 2 & 3 & 4 & \textrm{Total} \\\hline \textrm{Valor}\,\, y_i & 0 & 0 & 2 & 1 & 3\\\hline \end{array}$$

Existem $\binom{4}{2}= 6$ amostras possíveis de tamanho $n=2$. 

$S = \{(1;2); (1;3); (1;4); (2;3); (2;4); (3;4)\}\quad$ é o conjunto de todas as amostras possíveis. 

A notação para representar o conjunto que forma cada amostra foi o ( ), para evitar usar { } dentro de { }. Cada elemento do conjunto S é em si mesmo um conjunto de rótulos de unidades selecionadas para a amostra. 

As amostras são selecionadas com igual probabilidade. Cada amostra tem probabilidade de ser selecionada igual a 1/6 $\rightarrow p(s)=1/6 \,\,\,\forall s\in S$.  

A tabela, a seguir, apresenta o conjunto de todas as amostras possíveis, as unidades de cada amostra, os valores de $y$ na amostra, a soma amostral e as probabilidades de cada amostra ser selecionada.

$$\begin{array}{|c|c|c|c|c|}\hline \textrm {Amostra} \,\,s & \textrm{Unidades na Amostra} & \textrm{Valores na Amostra} & \textrm {Soma Amostral}\,\, (t) & \textrm{Probablidades} \,\, p(s)\\\hline 1 & \textrm{{1;2}} & \textrm{{0;0}} & 0 & 1/6\\\hline 2 & \textrm{{1;3}} & \textrm{{0;2}} & 2 & 1/6\\\hline 3 & \textrm{{1;4}} & \textrm{{0;1}} & 1 & 1/6\\\hline 4 & \textrm{{2;3}} & \textrm{{0;2}} & 2 & 1/6\\\hline 5 & \textrm{{2;4}} & \textrm{{0;1}} & 1 & 1/6\\\hline 6 & \textrm{{3;4}} & \textrm{{2;1}} & 3 & 1/6\\\hline \textrm{Total} & \textrm{-} & \textrm{-} & 9 & 1\\\hline  \end{array}$$

A *distribuição da Soma Amostral* é dada por:

$$\begin{array}{|l|c|c|c|c|}\hline \textrm{Valores possíveis de }\,\, t& 0 & 1 & 2 & 3\\\hline \textrm{Com probabilidade}\,\, p(s) & 1/6 & 2/6 & 2/6 & 1/6\\\hline \end{array}$$

O valor esperado de $t$ é:

$E(t)= \displaystyle\sum_{s\in S}t(s) p(s) = 0\times\frac{1}{6}+1\times\frac{2}{6}+2\times\frac{2}{6}+3\times\frac{1}{6}= \frac{9}{6} = 1,5$

Porém o total populacional é: $Y=\displaystyle\sum_{i=1}^{4}y_i= 3$

Como $1,5= E(t) \neq Y=3$ , dizemos que $t$ é um *estimador viciado* (ou enviesado) de $Y$ sob o plano amostral $p(s)$ adotado.

Como podemos "corrigir" o estimador de modo que fique *não viciado* (não enviesado)? 

Resposta: multiplicando por 2 o valor da soma amostral t.

Considere um novo estimador do total populacional: $\hat{Y}= 2\times t$  

Tal estimador na forma linear pode ser escrito como: $\hat{Y}= 2\times t =\displaystyle\sum_{i\in S}2\times y_i= \hat{Y_w}$  

$$\begin{array}{|l|c|c|c|c|}\hline \textrm{Valores possíveis de }\,\, 2\times t& 0 & 2 & 4 & 6\\\hline \textrm{Com probabilidade}\,\, p(s) & 1/6 & 2/6 & 2/6 & 1/6\\\hline \end{array}$$

O valor esperado de $\hat{Y}= 2\times t$ é:

$E(\hat{Y})= \displaystyle\sum_{s\in S}\hat{Y_s}  p(s) = 0\times\frac{1}{6}+2\times\frac{2}{6}+4\times\frac{2}{6}+6\times\frac{1}{6}= \frac{18}{6} = 3$

Como $E(\hat{Y})=3=Y$, dizemos que $\hat{Y}= 2\times t$  é um *estimador não viciado* de $Y$ sob o plano amostral $p(s)$ adotado.


### A Distribuição de Aleatorização

A função $p(s)$ definida no conjunto $S$ de todas as amostras possíveis é uma *distribuição de probabilidades*.

A distribuição de probabilidades $p(s)$, $s \in S$, é chamada *distribuição de aleatorização*.

Na *amostragem probabilística*, inferências são feitas considerando a *distribuição de aleatorização*.

Tais inferências são baseadas no plano amostral, onde a fonte de variação ou incerteza é a repetição hipotética do processo de amostragem utilizando $p(s$), que resultaria em diferentes amostras $s_1, s_2, ... \in S$.

A distribuição de $\hat{Y}= 2\times t=\displaystyle\sum_{i\in S}2\times y_i= \hat{Y_w}$ determinada por $p(s)$ é chamada de *distribuição amostral* do estimador.

Vamos estudar suas propriedades para avaliar se $\hat{Y}$  é um bom estimador para o total populacional Y.


### Estimadores Não Viciados para o Total

**Obtenção de Estimadores Não Viciados para o Total**

Trabalhar com a distribuição $p(s)$ é complicado. 

O número total de amostras possíveis cresce muito rapidamente com $N$ e com $n$. 

Por exemplo, o número de amostras sem reposição de tamanho $n$ de uma população com $N$ unidades é  $\binom{N}{n}$ .

A saída é usar propriedades simplificadoras desta distribuição. 


**Uma Propriedade Importante**

A probabilidade de inclusão da unidade $i$ na amostra é dada por: $P({i\in s})=\pi_i=\displaystyle\sum_{s\ni i} p(s)$ 

Se tomarmos o *inverso da probabilidade de inclusão* $\frac{1}{\pi_i}$ como peso $(w_i)$ de uma unidade amostrada, é fácil verificar que o estimador é dado por:

$\hat{Y_w} =\displaystyle\sum_{i\in s} w_iy_i= \displaystyle\sum_{i\in s} \frac{1}{\pi_i}y_i=\displaystyle\sum_{i\in s} {\pi_i}^{-1}y_i\quad$  é *não viciado* para o total populacional $Y$.

Em continuidade do exemplo 2.1 da população de 4 unidades $(N=4)$ mulheres, de quem foi indagado o número de filhos tidos vivos ($y$), tem-se: 

$$\begin{array}{|l|c|c|c|c|c|}\hline \textrm{Rótulo da unidade}\,\, i & 1 & 2 & 3 & 4 & \textrm{Total} \\\hline \textrm{Valor}\,\, y_i & 0 & 0 & 2 & 1 & 3\\\hline \textrm {Probabilidade de inclusão}\,\, \pi_i & 3/6=1/2 & 3/6=1/2 & 3/6=1/2 & 3/6=1/2 & \textrm{-}\\\hline \end{array}$$

Os pesos amostrais no exemplo 2.1 são $w_i = \frac{1}{\pi_i} = \frac{1}{1/2} = 2$

O estimador ponderado do total é dado por: 
$\hat{Y_w} =\displaystyle\sum_{i\in s} w_iy_i= \displaystyle\sum_{i\in s} {\pi_i}^{-1}y_i = \displaystyle\sum_{i\in s} 2y_i=2t$

E já se mostrou que este estimador é não viciado para $Y$.


**Exemplo 2.2**
Considere a mesma população fictícia do exemplo 2.1.

Considere agora o plano amostral que retira amostras de tamanho 2 dessa população segundo o plano amostral dado na tabela a seguir. 

$$\begin{array}{|c|c|c|c|c|}\hline \textrm {Amostra} \,\,s & \textrm{Unidades na Amostra} & \textrm{Valores na Amostra} & \textrm {Soma Amostral}\,\, (t) & \textrm{Probablidades} \,\, p(s)\\\hline 1 & \textrm{{1;2}} & \textrm{{0;0}} & 0 & 0,00\\\hline 2 & \textrm{{1;3}} & \textrm{{0;2}} & 2 & 0,20\\\hline 3 & \textrm{{1;4}} & \textrm{{0;1}} & 1 & 0,15\\\hline 4 & \textrm{{2;3}} & \textrm{{0;2}} & 2 & 0,20\\\hline 5 & \textrm{{2;4}} & \textrm{{0;1}} & 1 & 0,15\\\hline 6 & \textrm{{3;4}} & \textrm{{2;1}} & 3 & 0,30\\\hline \textrm{Total} & \textrm{-} & \textrm{-} & 9 & 1,00\\\hline  \end{array}$$

Chamaremos este plano amostral de plano 2.

Use as informações acima para:

1.	Verificar que o estimador baseado na soma amostral ($t$) é viciado para estimar o total populacional $Y$;

2.	Obter / definir um estimador não viciado para o total populacional $Y$;

3.	Comente sobre o uso de um plano amostral em que as diferentes amostras têm probabilidades desiguais de serem selecionadas. Surpresas? Dificuldades?

A distribuição do Total Amostral sob plano 2 é dada por: 

$$\begin{array}{|l|c|c|c|c|}\hline \textrm{Valores possíveis de }\,\, t& 0 & 1 & 2 & 3\\\hline \textrm{Com probabilidade}\,\, p(s) & 0,0 & 0,3 & 0,4 & 0,3\\\hline \end{array}$$

O valor esperado de $t$ é:

$E(t)= \displaystyle\sum_{s\in S}t(s) p(s) = 0\times0,0+1\times0,3+2\times0,4+3\times0,3=2<3=Y$

Para obter um estimador não viciado, devemos calcular pesos adequados para as unidades amostrais. 
Estes requerem calcular as probabilidades de inclusão na amostra.

$$\begin{array}{|l|c|c|c|c|}\hline \textrm{Rótulo da unidade}\,\, i & 1 & 2 & 3 & 4 \\\hline \textrm {Probabilidade de inclusão}\,\, \pi_i & 0,35 & 0,35 & 0,70 & 0,60  \\\hline \textrm{Peso}\,\, w_i & 20/7=2,857 & 20/7=2,857 & 10/7=1,429 & 5/3=1,667 \\\hline \end{array}$$

Usando o estimador do total com os pesos adequados, obtém-se os valores das estimativas para cada amostra possível na coluna e da tabela abaixo. 

$$\begin{array}{|c|c|c|c|c|}\hline \textrm {Amostra} \,\,s & \textrm{Valores na Amostra} & \textrm {Total Amostral Ponderado}\,\,(\hat Y_w) & \textrm{Probablidades} \,\, p(s) & \textrm {Valor do produto}\\\hline 1 & \textrm{{0;0}} & 0 & 0,00 & 0 \\\hline 2 & \textrm{{0;2}} & 2\times(10/7) & 0,20 & 4/7\\\hline 3 & \textrm{{0;1}} & 1\times(5/3) & 0,15 &1/4\\\hline 4 & \textrm{{0;2}} & 2\times(10/7) & 0,20 & 4/7\\\hline 5 & \textrm{{0;1}} & 1\times (5/3) & 0,15 & 1/4\\\hline 6 & \textrm{{2;1}} & 2\times (10/7)+1\times(5/3) & 0,30 & 6/7+1/2\\\hline \textrm{Total} & & & & 3\\\hline  \end{array}$$

**Notas**

* O estimador $\hat{Y_w}$  tem valor esperado igual ao total populacional $Y$ logo é *NÃO VICIADO*.

*	O fato de que a amostra {1;2} tem probabilidade nula de ser selecionada viola os critérios definidos para que o plano de amostragem 2 seja chamado de amostragem probabilística? Sim ou não? Porquê?

*	Temos agora duas opções para selecionar amostras (de tamanho 2) da população U, e estimar o total populacional $Y$ sem vício.

*	Qual das duas é melhor?

**Estratégia 1:** seleção equiprovável de pares (amostras) com estimador de total ponderado ($\hat{Y_w} =2t$)

$$\begin{array}{|l|c|c|c|c|}\hline \textrm{Valores possíveis de}\,\, \hat Y_w=2\times t& 0 & 2 & 4 & 6\\\hline \textrm{Com probabilidade}\,\, p(s) & 1/6 & 2/6 & 2/6 & 1/6\\\hline \end{array}$$

**Estratégia 2:** seleção de amostras com probabilidades desiguais, e estimador de total ponderado ($\hat{Y_w}$)

$$\begin{array}{|l|c|c|c|c|}\hline \textrm{Valores possíveis de}\,\, \hat Y_w & 5/3 & 20/7 &  20/7+5/3\\\hline \textrm{Com probabilidade}\,\, p(s) & 0,30 & 0,40 & 0,30 \\\hline \end{array}$$

A melhor estratégia é escolhida medindo o *afastamento esperado* entre o valor do estimador e o valor do total populacional desconhecido ($Y$).  Para isso, usamos a *variância do estimador*, dada por:

$V(\hat Y)=\displaystyle\sum_{s\in S}({\hat Y- Y)}^2\times p(s)$

ou o *desvio padrão do estimador*, dado por

$DP(\hat Y)= \sqrt {V(\hat Y)}=\displaystyle\sqrt{\sum_{s\in S}({\hat Y- Y)}^2\times p(s)}$

A seguir são calculadas as variâncias dos estimadores sob as duas estratégias ($E2$ e $E1$)

$$\begin{array}{|c|c|c|c|c|}\hline \textrm {Amostra} & \textrm{Valores na} & \textrm {Estimador} & \textrm{Probabilidade}\,\,p(s) & \textrm {Estimador} & \textrm{Probabilidade}\,\, p(s) \\ s & \textrm{Amostra} & \textrm {sob $E2$} & \textrm{sob $E2$} & \textrm{sob $E1$}&\textrm{sob $E1$} \\\hline 1 & \textrm{{0;0}} & 0 & 0,00 & 0 &1/6\\\hline 2 & \textrm{{0;2}} & 2\times(10/7) & 0,20 & 4 & 1/6\\\hline 3 & \textrm{{0;1}} & 1\times(5/3) & 0,15 & 2 & 1/6\\\hline 4 & \textrm{{0;2}} & 2\times(10/7) & 0,20 & 4 & 1/6 \\\hline 5 & \textrm{{0;1}} & 1\times (5/3) & 0,15 & 2 & 1/6\\\hline 6 & \textrm{{2;1}} & 2\times (10/7)+1\times(5/3) & 0,30 & 6 & 1/6\\\hline \textrm{Variância} & \textrm{-} & 1,24 & \textrm{-} & 3,67 & \textrm{-} \\\hline  \end{array}$$

**Conclusões:**

*	Ambas as estratégias permitem usar *estimadores não viciados* do total $Y$.

*	A estratégia 2 tem o *estimador com menor variância*, e deve ser preferida à estratégia 1, pois o tamanho das amostras é o mesmo.

*	*Minimizar a variância* é o critério de desempate para escolha entre *estratégias não viciadas de amostragem e estimação* de *igual custo total*.

### Teoria Básica

Como já foi dito, trabalhar com a distribuição $p(s)$ é complicado.

Isto ocorre porque o número total $\binom{N}{n}$  de amostras possíveis cresce muito rapidamente com $N$ e com $n$. 

$$\begin{array}{|l|c|c|c|c|}\hline N & n & \textrm{Número de Amostras} & & N & n & \textrm{Número de Amostras}\\\hline 1.000 & 2 &5,00E+05& & 10.000 & 2 & 5,00E+07\\\hline 1.000 & 10 & 2,63E+29 & & 10.000 & 10 & 2,74E+33\\\hline1.000 & 20 &3,39E+41& & 10.000 & 20 & 4,03E+61\\\hline 1.000 & 100 & 6,39E+139 & & 10.000 & 100 & 6,52E+247 \\\hline \end{array}$$

A saída encontrada é trabalhar com distribuições das variáveis aleatórias indicadoras $\delta_1$, $\delta_2$,... ,$\delta_N$ definidas tal que:

$\delta_i=I(i\in s)=\left\{\begin{array}{ll} 1 & i\in s\\ 0 & i\notin s\end{array}\right.\,\,\, \forall\,\, i\in U$.

A variável $\delta_i$ é indicadora do evento 'inclusão da unidade $i$ na amostra $s$'.

**Exemplo 2.1**

Para $N=4$ e $n=2$, as seis amostras possíveis podem ser representadas por:

$$\begin{array}{|c|c|c|c|}\hline \textrm {Amostra} \,\,s & \textrm{Unidades na Amostra} & \delta_1 & \delta_2 & \delta_3 & \delta_4 \\\hline 1 & \textrm{{1;2}} & 1 & 1 & 0 & 0\\\hline 2 & \textrm{{1;3}} & 1 & 0 & 1 & 0\\\hline 3 & \textrm{{1;4}} & 1 & 0 & 0 & 1\\\hline 4 & \textrm{{2;3}} & 0 & 1 & 1 & 0 \\\hline 5 & \textrm{{2;4}} & 0 & 1 & 0 & 1\\\hline 6 & \textrm{{3;4}} & 0 & 0 & 1 & 1 \\\hline  \end{array}$$

Cada amostra fica univocamente determinada pelas variáveis indicadoras $\delta_1$, $\delta_2$,... ,$\delta_N$ correspondentes. 

As variáveis indicadoras dependem da amostra $s$, apesar de não termos indicado isto explicitamente em nossa notação.

Então as probabilidades de seleção ou inclusão na amostra, denotadas $\pi_i$, são definidas como:

 $\pi_i=P({i\in s})=\displaystyle\sum_{s\ni i} p(s)=P(\delta_i=1)=E(\delta_i)\, \,\,\,\forall\,\, i\in U$.
 
As *probabilidades de inclusão* $\pi_i$ são ditas de *primeira ordem*.
 
Precisaremos também definir as *probabilidades de inclusão de segunda ordem*, denotadas $\pi_{ij}$, dadas por: 

 $\pi_{ij}=P({i,j\in s})=\displaystyle\sum_{s\ni i,j} p(s)=P(\delta_i\delta_j=1)=E(\delta_i\delta_j)\, \,\,\,\forall\,\, i,j\in U$.
 
Note que quando $i=j$, $\pi_{ij}=\pi_{ii}=\pi_i\, \,\,\,\forall\,\, i,j\in U$. 
 
Logo:
 
$V(\delta_i)=\pi_i(1-\pi_i)$
 
$COV(\delta_i,\delta_j)=\pi_{ij}-\pi_i\pi_j$.
  
**Um Método Geral de Prova em Amostragem**

Este método se baseia nas variáveis indicadoras $\delta_1$, $\delta_2$,... ,$\delta_N$.

Uma propriedade importante das variáveis indicadoras é que:

$\displaystyle\sum_{i\in s}\delta_i(s)=\sum_{i\in U}\delta_i(s)$
 
Segue também que $\displaystyle\sum_{i\in s}y_i=\sum_{i\in s}\delta_iy_i=\sum_{i\in U}\delta_iy_i$
 
Note que o truque é converter a soma amostral em uma soma na população.
 
Seja  $Y=\displaystyle\sum_{i\in U}y_i\quad$ (total populacional) o parâmetro alvo.
 
### Estimador linear de total

Um *estimador linear de Y* é sempre da forma:

$\hat Y_w=\displaystyle\sum_{i\in s}w_iy_i=\sum_{i\in U}w_i\delta_iy_i$

onde $w_i$ é o peso da unidade $i$.

Para que o estimador linear de $Y$ seja não viciado, é preciso que:

$E(\hat Y_w)=Y \Leftrightarrow \displaystyle\sum_{i\in U}w_iE(\delta_i)y_i=\sum_{i\in U}y_i\Leftrightarrow\displaystyle\sum_{i\in U}w_i\pi_iy_i=\sum_{i\in U}y_i$

Esta relação só será válida para quaisquer valores populacionais $y_i$ da variável de pesquisa caso $w_i*\pi_i=1 \,\,\,\forall\,\, i\in U$.

Portanto a condição para que o estimador de total  $\hat Y_w=\displaystyle\sum_{i\in s}w_iy_i$ seja SEMPRE não viciado é que os pesos das unidades na amostra sejam iguais ao inverso das respectivas probabilidades de inclusão: 
  
 $w_i={\pi_i}^{-1}=\frac{1}{\pi_i}\,\,\,\forall\,\, i\in U$.
 
Logo o estimador não viciado de total fica dado por:

$\hat Y_w=\displaystyle\sum_{i\in s}\frac{y_i}{\pi_i}=\sum_{i\in s}{\pi_i}^{-1}y_i=\hat Y_{HT}\Rightarrow\quad$Estimador de *Horvitz-Thompson*.

Este estimador está definido para qualquer plano amostral, desde que $\pi_i>0\,\,\,\forall\,\, i\in U$.
Por isto esta é uma condição necessária para a amostragem probabilística de populações finitas.

### Propriedades do Estimador de Horvitz-Thompson

O *estimador de Horvitz-Thompson* é *não viciado* para estimar o total, ou seja, $E(\hat Y_{HT})=Y$

Prova:

$E(\hat Y_{HT})= E\left[\displaystyle\sum_{i\in U}\frac{\delta_iy_i}{\pi_i}\right]= \displaystyle\sum_{i\in U}\left[\frac{E(\delta_i)y_i}{\pi_i}\right]=\sum_{i\in U}y_i=Y$

Esta propriedade vale para qualquer população, variável de interesse $y$ e plano amostral, desde que $\pi_i>0\,\,\,\forall\,\, i\in U$.

*Variância do Estimador Horvitz-Thompson para o total* 

$V(\hat Y_{HT})= \displaystyle\sum_{i\in U}\pi_i(1-\pi_i)\left(\frac{y_i}{\pi_i}\right)^2+\displaystyle \sum_{i\in U}\sum_{i\neq j}(\pi_{ij}-\pi_i\pi_j)\left(\frac{y_i}{\pi_i}\frac{y_j}{\pi_j}\right)$


Esta é a chamada forma de Horvitz-Thompson da variância.

Existe uma outra forma para esta variância, que vamos conhecer mais tarde.

Prova:

$\begin{align}V(\hat Y_{HT}) &=  V\left[\displaystyle\sum_{i\in U}\left(\frac{y_i}{\pi_i}\right)\delta_i\right]\\ & =\displaystyle\sum_{i\in U}\left(\frac{y_i}{\pi_i}\right)^2V(\delta_i)+\displaystyle \sum_{i\in U}\sum_{i\neq j}\left(\frac{y_i}{\pi_i}\frac{y_j}{\pi_j}\right)COV(\delta_i,\delta_j)\\ & =\displaystyle\sum_{i\in U}\pi_i(1-\pi_i)\left(\frac{y_i}{\pi_i}\right)^2+\displaystyle \sum_{i\in U}\sum_{i\neq j}(\pi_{ij}-\pi_i\pi_j)\left(\frac{y_i}{\pi_i}\frac{y_j}{\pi_j}\right)\end{align}$


*Estimador da Variância do Estimador de Total*

Um estimador não viciado da variância do estimador de Horvitz-Thompson do total é dado por:

$\hat V_1(\hat Y_{HT})= \displaystyle\sum_{i\in s}\frac{\pi_i(1-\pi_i)}{\pi_i}\left(\frac{y_i}{\pi_i}\right)^2+\displaystyle \sum_{i\in s}\sum_{i\neq j}\frac{(\pi_{ij}-\pi_i\pi_j)}{\pi_i}\left(\frac{y_i}{\pi_i}\frac{y_j}{\pi_j}\right)$

Este estimador de variância usou estimadores tipo Horvitz-Thompson dos totais nas duas parcelas da expressão da variância $V_p(\hat Y_{HT})$.

*Uma Forma Alternativa para a Variância*

Para planos amostrais de tamanho pré-fixado, pode-se demonstrar que uma forma equivalente da variância do estimador de Horvitz-Thompson é dada pela expressão de Sen-Yates-Grundy a seguir.

$V(\hat Y_{HT})=\displaystyle\sum_{i\in U}\sum_{j>i}(\pi_i \pi_j-\pi_{ij})\left(\frac{y_i}{\pi_i}\frac{y_j}{\pi_j}\right)^2$

Note a troca do sinal da diferença de probabilidades de inclusão em relação à fórmula anterior. 

*Outro Estimador da Variância do Estimador de Total*

$\hat V_{SYG}(\hat Y_{HT})= \displaystyle\sum_{i\in s}\sum_{j>i}(\pi_i \pi_j-\pi_{ij})\left(\frac{y_i}{\pi_i}\frac{y_j}{\pi_j}\right)^2$.

O estimador $\hat V_{SYG}(\hat Y_{HT})$ foi obtido / motivado a partir da forma de Sen-Yates-Grundy para a variância do estimador de total.

Tal estimador não coincide com o estimador de variância derivado a partir da expressão de Horvitz-Thompson.

**Notas**

Pode-se derivar estimadores de total e da variância do estimador de total como casos especiais para distintos planos amostrais.

Há fórmulas de variância disponíveis para permitir avaliar qualidade do estimador de total sob distintas situações (população, variável e plano amostral).

Um total populacional sempre pode ser estimado sem vício por uma soma amostral $\pi$-ponderada.
