
#Amostragem Estratificada

Amostragem Estratificada (AE) é um processo de amostragem que usa alguma informação relevante que deve estar disponível para todos os elementos da população para *dividir a população $U$ em $H$ grupos* disjuntos e exaustivos, geralmente mais *homogêneos*, chamados *estratos* e com a *seleção de amostras dentro de cada um dos estratos*, independentemente.

As variáveis de estratificação podem ser geográficas ou não-geográficas (rendimento, idade, sexo, número de empregados,etc.), sendo limitadas àquelas informações que estão disponíveis no cadastro. 

Os parâmetros são estimados em cada estrato, de acordo com o esquema de seleção adotado e as estimativas são agregadas para o conjunto da população.

Dentre as vantagens da AE destacam-se:

. A possibilidade de aumentar a precisão das estimativas para o conjunto da população.

· A garantia de observação de amostras em todos os estratos formados.

· A  possibilidade de estimação para subgrupos da população da pesquisa com eficiência e precisão controladas.

· A viabilidade de ser operacionalmente e/ou administrativamente mais conveniente. 

Por outro lado, a AE requer conhecimento das variáveis de estratificação para todas as unidades do cadastro antes da amostragem e a re-estruturação do cadastro antes da amostragem. Apenas uma estratificação é possível e dividir a população em muitos estratos pode levar a ter amostras muito pequenas em cada estrato.

Seguem as razões para estratificar uma população:

1. Estratos formam domínios “naturais” ou substantivos de interesse. Por exemplo: regiões geográficas; farmácias e lojas de departamentos; homens e mulheres; etc.

2. Para “espalhar” a amostra sobre toda a população, isto é, para fazer a amostra “representativa”e assegurar que todas as partes (estratos) da população estão representados na amostra.

3. Para melhorar a eficiência amostral, isto é, para reduzir a variância dos estimadores quanto maior for a homogeneidade dentro dos estratos.

4. Quando for necessário usar métodos diferentes de coleta em diferentes subgrupos da população.

Podemos distinguir dois tipos de estratificação: 

1. Natural - quando os estratos são iguais a subgrupos da população para os quais se requer estimativas com precisão controlada.

2. Estatística - quando os estratos são definidos como subgrupos homogêneos da população, visando aumentar eficiência na estimação para a população como um todo. Neste caso, não há interesse específico na estimação de parâmetros dos estratos formados.

Há diversos fatores que influenciam a eficiência na AE: a escolha da(s) variável(is) de estratificação; o número de estratos; a determinação dos limites dos estratos; a alocação da amostra nos estratos; e o método de seleção da amostra em cada estrato.

Para conseguir ganhar eficiência com o uso da estratificação, a ideia é tornar os valores da(s) variável(is) de estudo dentro de cada estrato os mais similares / homogêneos possíveis, isto é, *minimizar a variância dentro dos estratos*.

Para isso é fundamental ter acesso a cadastro com variáveis auxiliares que possam ser usadas para estratificar a população de forma eficiente. 

Uma importante consideração na amostragem estratificada é a forma na qual a amostra total é alocada em cada estrato, podendo ser feita de forma proporcional ou desproporcional:

- *proporcional*: quando a distribuição da amostra total é proporcional ao número de unidades em cada estrato. Neste caso, a fração amostral em cada estrato é constante e igual fração amostral da amostra inteira. Portanto, os estratos maiores ficam com amostras maiores; 

- *igual*: quando as amostras têm o mesmo tamanho em todos os estratos; 

- *de Neyman*: quando a distribuição da amostra total considera a variabilidade entre unidades dentro dos estratos, levando a tamanhos de amostras maiores em estratos com maior variabilidade entre unidades; e   

- *ótima*: quando a distribuição da amostra total depende do tamanho, da variabilidade e do custo de coleta de cada estrato. 

As situações que indicam a necessidade de alocação desproporcional (igual, de Neyman ou ótima) são quando as estimativas são requeridas por estrato levando a estratos menores precisarem ser amostrados com taxas maiores ou quando os estratos diferem em termos de variabilidade entre unidades e/ou custo por unidade. 


##O Método Geral

Particione (divida) $U$ em $H$ subconjuntos (grupos) *mutuamente exclusivos e exaustivos*, chamados *estratos*, e denotados por $U_1, ..., U_h, ..., U_H$, de modo que: $U=U_1\cup U_2\cup \dots\cup U_H=\displaystyle\bigcup_{h=1}^H U_h$ e  $U_h \cap U_k=\emptyset,\, h\ne k$.

Então $U_h = \textrm {\{unidades pertencentes ao estrato h}\}$, para $h=1,2,...,H$.

Seja $N_h$ o tamanho de $U_h$. Então $N_1+N-2+\dots+N_H=N$.

Selecione uma amostra $a_h$ de tamanho $n_h$, com $n_h>0$, segundo um plano amostral $p_h(a_h)$ *independentemente dentro de cada estrato* $h$, onde $h = 1, 2, ..., H$, e $\displaystyle \sum_{h=1}^{H}n_h=n$.

Assim, fica assegurado que cada estrato tem sua população representada na amostra completa dada por: $s=a_1\cup a_2 \cup\dots\cup a_H$. 

A independência da amostragem nos estratos consiste em tratar cada estrato como se fosse uma população separada, para fins de sorteio da amostra.

Devido à independência da seleção nos estratos, temos: $p(s)=p_1(a_1)\times p_2(a_2)\times \dots \times p_H(a_H)$.

Diferentes planos amostrais podem ser empregados nos diversos estratos, embora isso seja pouco comum na prática.

O mais comum é usar um mesmo tipo de sorteio nos vários estratos. 


**Exemplo 10.1:** População dividida em 2 estratos. AAS usada no estrato 1, com Amostragem Binomial usada no estrato 2.

**Exemplo 10.2:** Amostragem Estratificada por Corte (AEC)

População dividida em dois estratos. Num estrato se faz um censo, isto é, se pesquisa o conjunto completo de unidades ali existentes, e no outro se faz AAS.

**Exemplo 10.3:** Amostragem Estratificada Simples (AES)

Amostras aleatórias simples selecionadas em cada um dos estratos definidos.


##Amostragem Estratificada Simples (AES)

Trata-se do caso especial em que *AAS é empregada em todos os estratos*.

Neste caso, os tamanhos $N_h$ de cada um dos estratos $U_h$ são considerados conhecidos.

O cadastro deve permitir separar as unidades da população nos $H$ estratos definidos.

###Esquema de Seleção

Selecione uma AAS de tamanho $n_h>0$ das $N_h$ unidades do estrato $U_h$, $h=1,2,...,H$.

Então:

$$p_h(a_h)=1/\binom {N_h}{n_h}= \binom {N_h}{n_h}^{-1}\,\,\,, \,\,h=1,2,\dots,H\,,\,\textrm e$$

$$p(s)=\prod_{h=1}^H p_h(a_h)=\prod_{h=1}^H \binom {N_h}{n_h}^{-1}$$.

O *tamanho total da amostra* é: $n_1+n_2+\dots+n_H=n$.

Para facilitar a apresentação das fórmulas, é costume passar a identificar as unidades populacionais usando dois rótulos.

* Um rótulo $h (h=1,...,H)$ é usado para indicar o estrato a que pertence a unidade; e

* Um rótulo $i (i=1,...,N_h)$ para indicar o rótulo da unidade dentro de cada estrato $h$.

Assim, um valor típico da variável de pesquisa é $y_{hi}$, para $i=1,...,N_h$ e $h=1,...,H$.

O quadro 11.1, a seguir, representa uma população estratificada com os *dados populacionais*.

$$\textrm{Quadro 11.1 - População estratificada com os dados populacionais}$$
$$\begin{array}{|c|c|c|}\hline
\textrm{Estrato} & \textrm{Tamanho do Estrato}\,N_h & \textrm{Dados}
\\\hline 1&N_1&y_{11},\dots,y_{1N_1} 
\\\hline \vdots&\vdots&\vdots
\\\hline h&N_h & y_{h1},\dots,y_{hN_h} 
\\\hline \vdots&\vdots&\vdots   
\\\hline H&N_H&y_{H1},\dots,y_{HN_H} 
\\\hline \end{array}$$

###Parâmetros populacionais

Seguem alguns parâmetros populacionais nos estratos e em toda população.   

**Parâmetros nos Estratos:**

$Y_h=\displaystyle\sum_{i=1}^{N_H}y_{hi}=\sum_{i \in U_h} y_{hi}$ é o total do estrato $h$;

$\overline Y_h=Y_h/N_h$ é a média do estrato $h$; e 

$S_h^2=\displaystyle\sum_{i=1}^{N_h}(y_{hi}-\overline Y_h)^2/(N_h-1)$ é a variância do estrato $h$.


**Parâmetros Populacionais (Globais):**

Tamanhos populacionais: $N_1+N_2+\dots+N_H=N$

$Y=\displaystyle\sum_{h=1}^H Y_h=\displaystyle\sum_{h=1}^H N_h\overline Y_h$ é o total populacional;

$\overline Y=Y/N=\displaystyle\sum_{h=1}^H N_h\overline Y_h/N=\sum_{h=1}^H W_h\overline Y_h$ é a média do total populacional, com $W_h=N_h/N$; e 

a variância do total populacional pode ser escrita como:

\begin{eqnarray}S_y^2&=&\displaystyle\sum_{h=1}^H\sum_{i=1}^{N_h}(y_{hi}-\overline Y)^2/(N-1)\\&=&\sum_{h=1}^H\sum_{i=1}^{N_h}[(y_{hi}-\overline Y_h)+(\overline Y_h - \overline Y)]^2/(N-1)\\&=&\sum_{h=1}^H\frac{N_h-1}{N-1}S_h^2+\sum_{h=1}^{H}\frac{N_h}{N-1}(\overline Y_h-\overline Y)^2\end{eqnarray} 

Isto é: Variância *Total* = Variância *Dentro* + Variância *Entre*, 

sendo $\textrm{Variância Dentro}=\displaystyle\sum_{h=1}^H\frac{N_h-1}{N-1}S_h^2$ e $\textrm{Variância Entre}=\displaystyle\sum_{h=1}^{H}\frac{N_h}{N-1}(\overline Y_h-\overline Y)^2$..

Para $S_y^2$ fixado, maximizar a variância *Entre* minimiza a variância *Dentro*. 



###Dados Amostrais

A notação para os dados amostrais é semelhante à usada para denotar os dados populacionais. O quadro 11.2, a seguir, representa os *dados amostrais* de uma AES.

$$\textrm{Quadro 11.2 - Dados amostrais de uma AES}$$
$$\begin{array}{|c|c|c|c|}\hline
\textrm{Estrato} & \textrm{Tamanho amostral}\,n_h &\textrm{Rótulos na amostra} &\textrm{Dados amostrais}
\\\hline 1&n_1&a_1=\{{i_1,\dots,i_{n_1}}\}&y_{1{i_1}},\dots,y_{1{i_{n_1}}} 
\\\hline \vdots&\vdots&\vdots&\vdots
\\\hline h&n_h &a_h=\{{i_1,\dots,i_{n_h}}\}& y_{h{i_1}},\dots,y_{h{i_{n_h}}} 
\\\hline \vdots&\vdots&\vdots&\vdots   
\\\hline H&n_H&a_H=\{{i_1,\dots,i_{n_H}}\}& y_{H{i_1}},\dots,y_{H{i_{n_H}}}
\\\hline \end{array}$$

###Estimação do total e da média populacional 

Como a amostragem é feita independentemente por estrato, podemos estimar separadamente os parâmetros de cada estrato.

Sob AES, os estimadores usuais dos parâmetros nos estratos são:

$\widehat Y_h=\displaystyle\sum_{i \in a_h}w_{hi}y_{hi}= \frac{N_h}{n_h}\sum_{i \in a_h}y_{hi}=N_h\overline y_h$ é o estimador do total do estrato $h$.

Nota-se que o peso $w_{hi} = w_h = N_h/n_h$ é o inverso da probabilidade de inclusão para unidades dentro de cada estrato $h$ sob AES. 

$\overline y_h=\frac{1}{n_h}\displaystyle\sum_{i \in a_h}y_{hi}$ é o estimador da média do estrato $h$; e 

$s_h^2=\frac{1}{n_h -1}\displaystyle\sum_{i \in a_h}(y_{hi}-\overline y_h)^2$ é o estimador da variância do estrato $h$. 

Como temos AAS de $n_h$ unidades dentro do estrato $h$, são válidas as seguintes propriedades: 

$E_{AES}\left(\overline y_h\right)=\overline Y_h$; $\,\,$ $E_{AES}\left(\widehat Y_h\right)=Y_h$ e$\,\,$ $E_{AES}\left(s_h^2 \right)=S_h^2$.

$V_{AES}\left(\overline y_h\right)= \left(\frac{1}{n_h}-\frac{1}{N_h}\right)S_h^2$ é a variância  do estimador da média do estrato $h$;

$V_{AES}\left(\widehat Y_h\right)= N_h^2V_{AES}\left(\overline y_h\right)$ é a variância do estimador de total do estrato $h$; 

$\widehat V_{AES}\left(\overline y_h\right)=\left(\frac{1}{n_h}-\frac{1}{N_h}\right)s_h^2$ é o estimador da variância do estimador da média do estrato $h$; e 

$\widehat V_{AES}\left(\widehat Y_h\right)= N_h^2 \widehat V_{AES}\left(\overline y_h\right)$ é o estimador da variância do estimador de total do estrato $h$.


Na estimação de parâmetros populacionais (globais), ou seja, para o conjunto da população temos: 

$\widehat Y_{AES}=\displaystyle\sum_{h=1}^{H}\widehat Y_h =\sum_{h=1}^{H}N_h\overline y_h$ é o estimador do total Y;

$\overline y_{AES}=\displaystyle\sum_{h=1}^{H}W_h \overline y_h =\sum_{h=1}^{H}\frac{N_h}{N}\overline y_h$ é o estimador da média $\overline Y$.

**Nota:** Raramente é necessário estimar a variância global $S_y^2$. Se fosse necessário, como você faria isso? 

O estimador de média é não viciado sob AES, isto é: $E_{AES}\left(\overline y_{AES}\right)=\overline Y$.

Isto segue porque $E_{AES}\left(\overline y_h\right)=\overline Y_h$, para $h=1,...,H$, e $E_{AES}\left(\displaystyle\sum_{h=1}^{H}W_h\overline y_h\right)=\displaystyle\sum_{h=1}^{H}W_h E_{AES}(\overline y_h)=\sum_{h=1}^{H}W_h\overline Y_h=\overline Y$.

A variância do estimador $\overline y_{AES}$ pode ser obtida por: $V_{AES}\left(\overline y_{AES}\right)=\displaystyle\sum_{h=1}^{H}W_h^2V_{AES}\left(\overline y_h\right)$.

Isto segue devido à independência da amostragem nos estratos, que implica em $COV_{AES}(\overline y_h,\overline y_k)=0$, $h\ne k$. 

Então,  $V_{AES}\left(\overline y_{AES}\right)=\displaystyle\sum_{h=1}^{H}W_h^2\left(\frac{1}{n_h}-\frac{1}{N_h}\right)S_h^2$ e $V_{AES}\left(\widehat Y_{AES}\right)= N^2\displaystyle\sum_{h=1}^{H}W_h^2\left(\frac{1}{n_h}-\frac{1}{N_h}\right)S_h^2$.

Um estimador não viciado da variância de $\overline y_{AES}$ é dado por:

 $$\widehat V_{AES}\left(\overline y_{AES}\right)=\displaystyle\sum_{h=1}^{H}W_h^2\left(\frac{1}{n_h}-\frac{1}{N_h}\right)s_h^2$$.

No caso da estimação de total $\widehat Y_{AES}$, um estimador não viciado da variância  é dado por:

$$\widehat V_{AES}\left(\widehat Y_{AES}\right)= N^2\displaystyle\sum_{h=1}^{H}W_h^2\left(\frac{1}{n_h}-\frac{1}{N_h}\right)s_h^2$$.



###Intervalos de Confiança

Se $n=\displaystyle\sum_{h=1}^{H}n_h$ for grande, então o Teorema Central do Limite também se aplica. Portanto:

$$z=\frac{\overline y_{AES}-\overline Y}{\sqrt{\widehat V_{AES}\left(\overline y_{AES}\right)}}\approx N(0;1)$$
O intervalo de confiança de nível $1-\alpha$ para $\overline Y$ é dado por:

$$\overline y_{AES}\mp z_{\alpha/2}\sqrt{\widehat V_{AES}\left(\overline y_{AES}\right)}$$

 Para médias dentro de estratos, $\overline y_h$, os tamanhos de amostras *por estratos* $n_h$ devem ser grandes. 
 
 Nesse caso:
 
 $$z=\frac{\overline y_h-\overline Y_h}{\sqrt{\widehat V_{AES}\left(\overline y_h\right)}}\approx N(0;1)$$
 

e então um intervalo de confiança de nível $1-\alpha$ para $\overline Y_h$ é dado por:

$$\overline y_h\mp z_{\alpha/2}\sqrt{\widehat V_{AES}\left(\overline y_h\right)}$$


##Exercícios

**Exercício 10.1:** Mostre que a média amostral global $\overline y=\frac{1}{n}\displaystyle\sum_{h=1}^{H}\sum_{i \in a_h}y_{hi}$ pode ser escrita como $\overline y=\displaystyle\sum_{h=1}^{H}\frac{n_h}{n}\overline y_h\ne \sum_{h=1}^{H}\frac{N_h}{N}\overline y_h=\overline y_{AES}$, a menos que $\frac{n_h}{n}=\frac{N_h}{N}, \,\, \forall h=1,\dots,H$.

*Nota:* Um plano AES com $\frac{n_h}{n}=\frac{N_h}{N}$é chamado de amostragem estratificada simples proporcional ou equiponderada.

**Exercício 10.2:** Quais são as probabilidades de inclusão de primeira e segunda ordem para unidades na população sob AES? Que valores estas probabilidades assumem em caso de um plano AES proporcional ou equiponderada?


