
#Amostragem Estratificada

Amostragem Estratificada (AE) é um processo de amostragem que usa alguma informação relevante que deve estar disponível para todos os elementos da população para *dividir a população $U$ em $H$ grupos* disjuntos e exaustivos, geralmente mais *homogêneos*, chamados *estratos* e com a *seleção de amostras dentro de cada um dos estratos*, independentemente.

As variáveis de estratificação podem ser geográficas ou não-geográficas (rendimento, idade, sexo, número de empregados,etc.), sendo limitadas àquelas informações que estão disponíveis no cadastro. 

Os parâmetros são estimados em cada estrato, de acordo com o esquema de seleção adotado e as estimativas são agregadas para o conjunto da população.

Dentre as vantagens da AE destacam-se:

- a possibilidade de aumentar a precisão das estimativas para o conjunto da população;

- a garantia de observação de amostras em todos os estratos formados;

- a possibilidade de estimação para subgrupos da população da pesquisa com eficiência e precisão controladas; e

- a viabilidade de ser operacionalmente e/ou administrativamente mais conveniente. 

Por outro lado, a AE requer conhecimento das variáveis de estratificação para todas as unidades do cadastro antes da amostragem e a re-estruturação do cadastro antes da amostragem. Apenas uma estratificação é possível e dividir a população em muitos estratos pode levar a ter amostras muito pequenas em cada estrato.

Seguem as razões para estratificar uma população:

1. Estratos formam domínios “naturais” ou substantivos de interesse. Por exemplo: regiões geográficas; farmácias e lojas de departamentos; homens e mulheres; etc.

2. Para “espalhar” a amostra sobre toda a população, isto é, para fazer a amostra “representativa”e assegurar que todas as partes (estratos) da população estão representados na amostra.

3. Para melhorar a eficiência amostral, isto é, para reduzir a variância dos estimadores quanto maior for a homogeneidade dentro dos estratos.

4. Quando for necessário usar métodos diferentes de coleta em diferentes subgrupos da população.

Podemos distinguir dois tipos de estratificação: 

1. *Natural* - quando os estratos são iguais a subgrupos da população para os quais se requer estimativas com precisão controlada.

2. *Estatística* - quando os estratos são definidos como subgrupos homogêneos da população, visando aumentar eficiência na estimação para a população como um todo. Neste caso, não há interesse específico na estimação de parâmetros dos estratos formados.

Há diversos fatores que influenciam a eficiência na AE: a escolha da(s) variável(is) de estratificação; o número de estratos; a determinação dos limites dos estratos; a alocação da amostra nos estratos; e o método de seleção da amostra em cada estrato.

Para *estratificação natural* a escolha da(s) variável(is) de estratificação se dá considerando TODAS as variáveis disponíveis com as quais são definidos os estratos naturais ou domínios de interesse da pesquisa.

No caso da *estratificação estatística*, escolha entre as variáveis disponíveis as que são *melhores preditoras* das variáveis de interesse da pesquisa.

Para conseguir ganhar eficiência com o uso da estratificação, a ideia é tornar os valores da(s) variável(is) de estudo dentro de cada estrato os mais similares / homogêneos possíveis, isto é, *minimizar a variância dentro dos estratos*.

Para isso é fundamental ter acesso a cadastro com variáveis auxiliares que possam ser usadas para estratificar a população de forma eficiente. 


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


**(#exm:seldifestratos)** População dividida em 2 estratos. AAS usada no estrato 1, com Amostragem Binomial usada no estrato 2.

**(#exm:corte)** Amostragem Estratificada por Corte (AEC)

População dividida em dois estratos. Num estrato se faz um censo, isto é, se pesquisa o conjunto completo de unidades ali existentes, e no outro se faz AAS.

**(#exm:AES)** Amostragem Estratificada Simples (AES)

Amostras aleatórias simples selecionadas em cada um dos estratos definidos.


##Amostragem Estratificada Simples (AES)

Trata-se do caso especial em que *AAS é empregada em todos os estratos*.

Neste caso, os tamanhos $N_h$ de cada um dos estratos $U_h$ são considerados conhecidos.

O cadastro deve permitir separar as unidades da população nos $H$ estratos definidos.

###Esquema de Seleção

Selecione uma AAS de tamanho $n_h>0$ das $N_h$ unidades do estrato $U_h$, $h=1,2,...,H$.

Então:

\begin{equation} p_h(a_h)=1/\binom {N_h}{n_h}= \binom {N_h}{n_h}^{-1}\,\,\,, \,\,h=1,2,\dots,H.\,\,\textrm (\#eq:1)\end{equation}

e

\begin{equation}p(s)=\prod_{h=1}^H p_h(a_h)=\prod_{h=1}^H \binom {N_h}{n_h}^{-1}(\#eq:2) \end{equation}.

O *tamanho total da amostra* é: $n_1+n_2+\dots+n_H=n$.

Para facilitar a apresentação das fórmulas, é costume passar a identificar as unidades populacionais usando dois rótulos.

* Um rótulo $h (h=1,...,H)$ é usado para indicar o estrato a que pertence a unidade; e

* Um rótulo $i (i=1,...,N_h)$ para indicar o rótulo da unidade dentro de cada estrato $h$.

Assim, um valor típico da variável de pesquisa é $y_{hi}$, para $i=1,...,N_h$ e $h=1,...,H$.

O Quadro \@ref(tab:pop estrat), a seguir, representa uma população estratificada com os *dados populacionais*.

$$\textrm{População estratificada com os dados populacionais}$$
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

A seguir são apresentados, respectivamente, o total do estrato $h$, a média do estrato $h$ e a variância do estrato $h$:

\begin{equation} Y_h=\displaystyle\sum_{i=1}^{N_H}y_{hi}=\sum_{i \in U_h} y_{hi} \end{equation}

\begin{equation} \overline Y_h=Y_h/N_h \end{equation}  

\begin{equation}S_h^2=\displaystyle\sum_{i=1}^{N_h}(y_{hi}-\overline Y_h)^2/(N_h-1) \end{equation}


**Parâmetros Populacionais (Globais):**

Tamanhos populacionais: $N_1+N_2+\dots+N_H=N$

O total populacional é dado por: 

\begin{equation} Y=\displaystyle\sum_{h=1}^H Y_h=\displaystyle\sum_{h=1}^H N_h\overline Y_h (\#eq:3)\end{equation}

A média do total populacional é definida como:

\begin{equation}\overline Y=Y/N=\displaystyle\sum_{h=1}^H N_h\overline Y_h/N=\sum_{h=1}^H W_h\overline Y_h (\#eq:4)\end{equation} 

com $W_h=N_h/N$  

e a variância do total populacional pode ser escrita como:

\begin{eqnarray}S_y^2&=&\displaystyle\sum_{h=1}^H\sum_{i=1}^{N_h}(y_{hi}-\overline Y)^2/(N-1)\\&=&\sum_{h=1}^H\sum_{i=1}^{N_h}[(y_{hi}-\overline Y_h)+(\overline Y_h - \overline Y)]^2/(N-1)\\&=&\sum_{h=1}^H\frac{N_h-1}{N-1}S_h^2+\sum_{h=1}^{H}\frac{N_h}{N-1}(\overline Y_h-\overline Y)^2 (\#eq:5)\end{eqnarray}

Isto é: Variância *Total* = Variância *Dentro* + Variância *Entre*, 

sendo $\textrm{Variância Dentro}=\displaystyle\sum_{h=1}^H\frac{N_h-1}{N-1}S_h^2$ e $\textrm{Variância Entre}=\displaystyle\sum_{h=1}^{H}\frac{N_h}{N-1}(\overline Y_h-\overline Y)^2$.

Para $S_y^2$ fixado, maximizar a variância *Entre* minimiza a variância *Dentro*. 



###Dados Amostrais

A notação para os dados amostrais é semelhante à usada para denotar os dados populacionais. O Quadro \@ref(tab:amo), a seguir, representa os *dados amostrais* de uma AES.

$$\textrm{Dados amostrais de uma AES}$$
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

Sob AES, os estimadores usuais dos parâmetros nos estratos são descritos a seguir:

$\widehat Y_h=\displaystyle\sum_{i \in a_h}w_{hi}y_{hi}= \frac{N_h}{n_h}\sum_{i \in a_h}y_{hi}=N_h\overline y_h$  é o estimador do total do estrato $h$.

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

O estimador do total $Y$ dado por:

\begin{equation}\widehat Y_{AES}=\displaystyle\sum_{h=1}^{H}\widehat Y_h =\sum_{h=1}^{H}N_h\overline y_h (\#eq:6)\end{equation} 

e o estimador da média $\overline Y$ dada por: 

\begin{equation}\overline y_{AES}=\displaystyle\sum_{h=1}^{H}W_h \overline y_h =\sum_{h=1}^{H}\frac{N_h}{N}\overline y_h (\#eq:7)\end{equation} 

**Nota:** Raramente é necessário estimar a variância global $S_y^2$. Se fosse necessário, como você faria isso? 

O estimador de média é não viciado sob AES, isto é: $E_{AES}\left(\overline y_{AES}\right)=\overline Y$.

Isto segue porque $E_{AES}\left(\overline y_h\right)=\overline Y_h$, para $h=1,...,H$, e $E_{AES}\left(\displaystyle\sum_{h=1}^{H}W_h\overline y_h\right)=\displaystyle\sum_{h=1}^{H}W_h E_{AES}(\overline y_h)=\sum_{h=1}^{H}W_h\overline Y_h=\overline Y$.

A variância do estimador $\overline y_{AES}$ pode ser obtida por:

\begin{equation}V_{AES}\left(\overline y_{AES}\right)=\displaystyle\sum_{h=1}^{H}W_h^2V_{AES}\left(\overline y_h\right)(\#eq:8)\end{equation} 

Isto segue devido à independência da amostragem nos estratos, que implica em $COV_{AES}(\overline y_h,\overline y_k)=0$, $h\ne k$. 

Então,  $V_{AES}\left(\overline y_{AES}\right)=\displaystyle\sum_{h=1}^{H}W_h^2\left(\frac{1}{n_h}-\frac{1}{N_h}\right)S_h^2$ e $V_{AES}\left(\widehat Y_{AES}\right)= N^2\displaystyle\sum_{h=1}^{H}W_h^2\left(\frac{1}{n_h}-\frac{1}{N_h}\right)S_h^2$.

Um estimador não viciado da variância de $\overline y_{AES}$ é dado por:

 \begin{equation}\widehat V_{AES}\left(\overline y_{AES}\right)=\displaystyle\sum_{h=1}^{H}W_h^2\left(\frac{1}{n_h}-\frac{1}{N_h}\right)s_h^2(\#eq:9)\end{equation} 

No caso da estimação de total $\widehat Y_{AES}$, um estimador não viciado da variância  é dado por:

\begin{equation}\widehat V_{AES}\left(\widehat Y_{AES}\right)= N^2\displaystyle\sum_{h=1}^{H}W_h^2\left(\frac{1}{n_h}-\frac{1}{N_h}\right)s_h^2(\#eq:10)\end{equation} 



###Intervalos de Confiança

Se $n=\displaystyle\sum_{h=1}^{H}n_h$ for grande, então o Teorema Central do Limite também se aplica. Portanto:

$$z=\frac{\overline y_{AES}-\overline Y}{\sqrt{\widehat V_{AES}\left(\overline y_{AES}\right)}}\approx N(0;1)$$
O intervalo de confiança de nível $1-\alpha$ para $\overline Y$ é dado por:

\begin{equation}\overline y_{AES}\mp z_{\alpha/2}\sqrt{\widehat V_{AES}\left(\overline y_{AES}\right)}(\#eq:11)\end{equation} 

 Para médias dentro de estratos, $\overline y_h$, os tamanhos de amostras *por estratos* $n_h$ devem ser grandes. 
 
 Nesse caso:
 
 $$z=\frac{\overline y_h-\overline Y_h}{\sqrt{\widehat V_{AES}\left(\overline y_h\right)}}\approx N(0;1)$$
 

e então um intervalo de confiança de nível $1-\alpha$ para $\overline Y_h$ é dado por:

$$\overline y_h\mp z_{\alpha/2}\sqrt{\widehat V_{AES}\left(\overline y_h\right)}$$

##Alocação da amostra pelos estratos

Uma importante consideração na amostragem estratificada é a forma na qual a amostra total é alocada em cada estrato, podendo ser feita de forma proporcional ou desproporcional:

- *proporcional*: quando a distribuição da amostra total é proporcional ao número de unidades em cada estrato. Neste caso, a fração amostral em cada estrato é constante e igual fração amostral da amostra inteira. Portanto, os estratos maiores ficam com amostras maiores; 

- *igual*: quando as amostras têm o mesmo tamanho em todos os estratos; 

- *de Neyman*: quando a distribuição da amostra total considera a variabilidade entre unidades dentro dos estratos, levando a tamanhos de amostras maiores em estratos com maior variabilidade entre unidades; e   

- *ótima*: quando a distribuição da amostra total depende do tamanho, da variabilidade e do custo de coleta de cada estrato. 

As situações que indicam a necessidade de alocação desproporcional (igual, de Neyman ou ótima) são quando as estimativas são requeridas por estrato levando a estratos menores precisarem ser amostrados com taxas maiores ou quando os estratos diferem em termos de variabilidade entre unidades e/ou custo por unidade. 


###Alocação Proporcional

Uma amostra ‘representativa’ deveria ‘imitar’ ou se parecer bastante com a população de onde foi extraída.

As unidades populacionais são distribuídas nos estratos segundo as proporções: $W_h=N_h/N,\,\,h=1,\dots,H$, com $\displaystyle\sum_{h=1}^{H}W_h=1$.

As proporções amostrais nos estratos são definidas como:
$\lambda_h=n_h/n,\,\,h=1,\dots,H$, com $\displaystyle\sum_{h=1}^{H}\lambda_h=1$.

Então o critério acima sugeriria tentar fazer $\lambda_h=W_h\,\,\,\forall h=1,2,\dots,H$.

Isto implica fazer $\frac{n_h}{n}=\frac{N_h}{N}$ ou $n_h=n\frac{N_h}{N}= nW_h, \,\,\, \forall h=1,2,\dots,H$.

Esta distribuição da amostra nos estratos é chamada *Alocação Proporcional*.

Um plano AES com $\frac{n_h}{n}=\frac{N_h}{N}$ é chamado de amostragem estratificada simples proporcional ou equiponderada.

Sob alocação proporcional, a *média amostral simples* é o estimador não viciado da média populacional, pois se $n_h=nW_h$, então:

\begin{equation}\overline y_{AES}=\displaystyle \sum_{h=1}^{H}W_h\overline y_h= \sum_{h=1}^{H}W_h\frac{1}{n_h}\sum_{i \in a_h}y_{hi}=\frac{1}{n}\sum_{h=1}^{H}\sum_{i \in a_h}y_{hi}=\overline y(\#eq:12)\end{equation} 

A variância de $\overline y_{AES}$ sob alocação proporcional simplifica para: 

\begin{equation}V_{AES/Prop}\left(\overline y_{AES}\right)=\left(\frac{1}{n}-\frac{1}{N}\right)\sum_{h=1}^{H}W_hS_h^2(\#eq:13)\end{equation} 

A expressão $\displaystyle\sum_{h=1}^{H}W_hS_h^2= S_D^2$ mede a *variância dentro* dos estratos, dada por uma média ponderada dos $S_h^2$. 

Então:

\begin{equation}V_{AES/Prop}\left(\overline y_{AES}\right)=\left(\frac{1}{n}-\frac{1}{N}\right)S_D^2(\#eq:14)\end{equation} 

Esta expressão tem a mesma forma que a correspondente ao caso de AAS, com $S_y^2$ substituído por $S_D^2$ .

Como a variância dentro é geralmente menor que a variância total $\left(S_D^2<S_y^2\right)$, fica evidenciado que estratificação com alocação proporcional geralmente reduz a variância do estimador quando comparada com AAS de igual tamanho.

###Alocação Ótima

A maioria das pesquisas sofre restrições orçamentárias.

Se o custo total da pesquisa é fixado em $C$ unidades monetárias, então é necessário especificar uma *função custo* que descreva como esse custo varia para diferentes tamanhos amostrais e alternativas de alocação.

Suponha uma função custo linear dada por: \begin{equation}C=c_0+\displaystyle\sum_{h=1}^{H}n_hc_h(\#eq:15)\end{equation} 

O problema é minimizar a $V_{AES}\left(\overline y_{AES}\right)$ sujeito à restrição de não ultrapassar o orçamento previsto (custo total $C$).

**Solução:**

$$V_{AES}\left(\overline y_{AES}\right)= \displaystyle\sum_{h=1}^{H}W_h^2S_h^2\left(\frac{1}{n_h}- \frac{1}{N_h}\right)=\sum_{h=1}^{H}W_h^2S_h^2/n_h -V_0$$

onde $V_0=\displaystyle\sum_{h=1}^{H}W_h^2S_h^2/N_h$.

Como $V_0$ não depende de $n_h$, minimizando $V_{AES}\left(\overline y_{AES}\right)$ sujeito a $C=c_0+\displaystyle\sum_{h=1}^{H}n_hc_h$ resulta em:

$$n_h\propto\left(W_h^2S_h^2/c_h\right)^{1/2}= W_hS_h/\sqrt c_h$$
Isto é: 

\begin{equation}n_h= n\times\frac {W_hS_h/\sqrt c_h}{\displaystyle \sum_{k=1}^{H}W_kS_k/\sqrt c_h}, \,\,\forall\, h=1,\dots,H (\#eq:16)\end{equation} 

Esta alocação é chamada **Alocação Ótima**.

Cabe registrar que sob a *alocação ótima*, selecione uma amostra maior num estrato $h$ sempre que:

a. O estrato tiver mais unidades $(N_h$ grande);

b. A variabilidade no estrato for maior ($S_h$ grande); e

c. O custo de amostragem no estrato for menor ($c_h$ pequeno).

Se $S_h = S*$ e $c_h = c* \,\,\forall h=1,2,...,H$, ambos constantes, então $n_h \propto N_h$, isto é, a alocação ótima coincide com a alocação proporcional.

Se $c_h = c* "h=1,2,...,H$, isto é, os custos são constantes ao longo dos estratos, então $n_h \propto N_hS_h$, gerando a chamada **Alocação (Ótima) de Neyman**.

Esta alocação é muito usada em pesquisas de estabelecimentos quando os desvios padrões $S_h$ crescem com o tamanho das unidades.

Para um custo fixado $C$, assumindo função linear de custos $C=c_0+\displaystyle\sum_{h=1}^{H}n_hc_h$, o tamanho total da amostra $n$ é:

\begin{equation}n=\left(C-c_0\right)\times\frac{\displaystyle\sum_{h=1}^{H}N_hS_h/\sqrt c_h}{\displaystyle\sum_{h=1}^{H}N_hS_h\sqrt c_h}(\#eq:17)\end{equation} 

Se a **Alocação de Neyman** é usada, então o valor da variância correspondente ao mínimo é dado por:

$$V_{AES/Ney}\left(\overline y_{AES}\right)=\frac{1}{n}\left(\displaystyle \sum_{h=1}^{H}W_hS_h\right)^2- \frac{1}{N}\left(\sum_{h=1}^{H}W_hS_h^2\right)$$
O segundo termo à direita corresponde à *correção de população finita*.

As soluções acima são ‘aproximadas’, pois ignoram restrições do tipo $n_h\le N_h,\,n_h\le 1, \,n_h\, \textrm{inteiro}\,\,\forall\,h$. Brito (2005) oferece uma solução ‘exata’.


###Comparação de Alternativas de Alocação da Amostra

Usando a partição da soma de quadrados total em parcelas devidas à variação dentro e entre estratos, e ignorando termos de ordem $1/N_h$, então sob *alocação de Neyman*, isto é, com $n_h \propto N_hS_h$ prova-se (Cochran, 1977, p. 99) que:

$$V_{AES/Ney}\left(\overline y_{AES}\right)\le V_{AES/Prop}\left(\overline y_{AES}\right)\le V_{AAS}\left(\overline y\right)$$

ou seja, AES com alocação de Neyman é mais eficiente que AES com alocação proporcional, ambas superando AAS como plano amostral.


###Alguns Problemas Com Alocação Ótima

Seguem algumas situações enfrentadas com a alocação ótima: 

1. Se os valores de $S_h, h=1,...,H$, são desconhecidos.

As solucões possíveis são: usar informação de variável auxiliar $x$; usar $S_{hx}$ para estimar $S_{hy}; predizer $y_{hi}$ usando $x_{hi}, e então estimar $S_{hy};usar a soma ou a amplitude de $x_h{i }$ no estrato $h$ como proxy para $S_{hy}; selecionar pequena amostra piloto (preliminar) e usar dados desta amostra para estimar $S_{yh}.

2. Pode haver muitas variáveis de pesquisa.

Cada variável usualmente levaria a uma alocação ótima diferente. Qualquer método deve buscar um compromisso entre as diversas alternativas: tome a média das alocações alternativas; escolha uma ou duas variáveis principais; use alocação proporcional; construa um ‘índice’ das variáveis de pesquisa e use este índice para definir a alocação.

Brito et al (2015) oferece abordagem promissora, para alocação ótima ‘multivariada’. O pacote ‘stratbr’ do R está disponível para implementar; usa formulações de programação inteira binária; soluções disponíveis para minimizar o custo ou tamanho amostral para limites de precisão especificados, ou para minimizar uma função de variância dado um orçamento ou tamanho amostral especificado; e permite fixar tamanho mínimo de amostra por estrato.

3. Se $n_h > N_h$ em alguns casos.

Ponha $n_h = N_h$ (estrato certo) para os estratos que $n_h > N_h$  e refaça a alocação ótima nos demais estratos.

4. Se $n_h = 1$ em alguns casos.

Se a estimação de variâncias for importante, então force $n_h\geq 2$.

Na prática, costuma-se fazer $n_h\geq 5$ devido à não resposta.

Caso contrário, use métodos aproximados somente para estimação de variâncias, tais como agregação de estratos ou similar (ver Cochran, 1977, seção 5A.12).

5. Ganhos de eficiência podem ser modestos, particularmente para estimação de proporções. 

Cochran(1977, p. 99) mostra que  $V_{AES/Ney}\left(\overline y_{AES}\right)\le V_{AES/Prop}\left(\overline y_{AES}\right)\le V_{AAS}\left(\overline y\right)$.

Os ganhos possíveis de precisão dependem da relação entre a(s) variável(is) de estratificação e as variáveis de pesquisa.

Em geral, ganhos são pequenos para amostras de pessoas e variáveis ligadas a atitudes, opiniões, comportamentos, etc.

Para pesquisas amostrais de estabelecimentos ou instituições, os ganhos podem ser muito grandes.

##Definição dos Limites dos Estratos

Se uma variável auxiliar $x$ estiver disponível, seus valores podem ser usados para formar estratos.

Como devemos formar os estratos? Quais os limites que devemos usar para delimitar os estratos?

Conforme já dito anteriormente, a determinação dos limites dos estratos influencia na eficiência na amostragem estratificada. 

Primeiro, escolha $H$, o número total de estratos.

Quanto maior for a correlação entre a variável de pesquisa $y$ e a variável auxiliar $x$ maior deve ser o número de estratos.

Evidências empíricas sugerem, entretanto, que $5\le H \le 10$. Mais detalhes sobre esta escolha podem ser estudadas em diversas referências apresentadas na Figura \@ref(fig:numeroestratos). 


<div class="figure">
<img src="Figuras/numeroestratos.png" alt="Soluções sobre escolha de número de estratos" width="379" />
<p class="caption">(\#fig:modclas)Soluções sobre escolha de número de estratos</p>
</div>

###Número de Estratos na Amostragem Estratificada Simples 

Para estimação por domínios, recomenda-se utilizar tantos estratos quantos sejam os domínios de interesse.

Para estimação de total ou média global, Cochran(1977, seção 5A.8) recomenda-se usar até 6 (seis) estratos, se a variável de estratificação for bem correlacionada com as variáveis de interesse,conforme justificativa dada a seguir.

Sob as hipóteses: $N$ grande, $f=n/N$ pequena; o modelo: $y_i = a + bx_i + \varepsilon_i$ para $i \in U$; estratificação “ótima” em $x$; alocação igual nos estratos ($n_h=n/H$), mostra-se que: $EPA\left(\overline y{AES}\right)=V_{AES}\left(\overline y_{AES}\right)/V_{AAS}\left(\overline y\right)= \rho^2/H^2+\left(1-\rho~2\right)$, onde $\rho$ é correlação entre $x$ e $y$.

A Tabela \@ref(tab:efic) apresenta valores de $V_{AES}\left(\overline y_{AES}\right)/V_{AAS}\left(\overline y\right)$ para vários valores de $H$.

$$\textrm{Valores de} V_{AES}\left(\overline y_{AES}\right)/V_{AAS}\left(\overline y\right) \textrm{para vários valores de}\, H$$
$$\begin{array}{ccccccc}\hline
H & 2 & 3 & 4 & 5 & 6 & \infty
\\\hline \rho=0,85 & 0,458 & 0,358 & 0,323 & 0,306 & 0,298 & 0,277 
\\ \rho=0,95 & 0,323 & 0,198 & 0,154 & 0,134 & 0,123 & 0,098
\\\hline \end{array}$$

A análise dos resultados acima evidencia que ganhos adicionais de eficiência com mais de seis estratos é modesto.

Na Figura \@ref(fig:precisaovsestratos.png) temos o gráfico dos ganhos de precisão versus número de estratos para $\rho=0,85$ e $\rho=0,95$. 


<div class="figure">
<img src="Figuras/precisaovsestratos.png" alt="Ganhos de precisão versus número de estratos" width="310" />
<p class="caption">(\#fig:unnamed-chunk-1)Ganhos de precisão versus número de estratos</p>
</div>



##Exercícios

**(#exe:media)** Mostre que a média amostral global $\overline y=\frac{1}{n}\displaystyle\sum_{h=1}^{H}\sum_{i \in a_h}y_{hi}$ pode ser escrita como $\overline y=\displaystyle\sum_{h=1}^{H}\frac{n_h}{n}\overline y_h\ne \sum_{h=1}^{H}\frac{N_h}{N}\overline y_h=\overline y_{AES}$, a menos que $\frac{n_h}{n}=\frac{N_h}{N}, \,\, \forall h=1,\dots,H$ ou seja, a menos que se adote amostragem estratificada simples proporcional ou equiponderada.

**(#exe:probinc)** Quais são as probabilidades de inclusão de primeira e segunda ordem para unidades na população sob AES? Que valores estas probabilidades assumem em caso de um plano AES proporcional ou equiponderada?


##Referências

Baillargeon, S. & Rivest, L. P. (2011). A General Algorithm for Univariate Stratification. Proceedings of the International Statistical Institute, Dublin.

Brito, J. A. M. (2005). Uma Formulação de Programação Inteira para o Problema de Alocação Ótima em Amostras Estratificadas. In: Anais do XXXVII Simpósio Brasileiro de Pesquisa Operacional - SOBRAPO, Gramado – RS, v. 1. p. 1851-1859.

Brito, J. A. M.; Maculan, N.; Lila, M. F. e Montenegro, F. T. (2010). An exact algorithm for the stratification problem with proportional allocation. Optimization Letters, v. 4, pp. 185 – 195.

Brito, J. A. de M., Silva, P. L. do N., Semaan, G. S., & Maculan, N. (2015). Integer programming formulations applied to optimal allocation in stratified sampling. Survey Methodology, 41(2), 427–442.

Dalenius T. & Hodges Jr., Joseph L. (1959). Minimum Variance Stratification. Journal of the American Statistical Association, Vol. 54, No. 285, pp. 88-101.

Ekman, G. (1959). An Approximation Useful in Univariate Stratification. The Annals of Mathematical Statistics v. 30, p. 219–229.

Glasser, G.J. (1962) On the complete coverage of large units in a statistical study. International Statistical Review, 30, 28-32.

Gunning, P. & Horgan, J.M. (2004). A new algorithm for the construction of stratum boundaries. Survey Methodology, 30, No. 2, 159-166.

Hedlin, D. (2000). A procedure for stratification based on an extended Ekman rule. Journal of Official Statistics, 16, 15-29.

Hidiroglou, M. A. (1986). The construction of a self-representing stratum of large units in survey design. The American Statistician, 40, n. 1, 27-31.

Lavallée, P. & Hidiroglou, M. A. (1988). On the stratification of skewed populations. Survey Methodology, 14, 33-43.

Rivest, L. P. (2002). A generalization of the Lavallée-Hidiroglou algorithm for stratification in business surveys. Survey Methodology 28, 191-198. 
