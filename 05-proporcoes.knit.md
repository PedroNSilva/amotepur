# Estimação de Proporções {#proporc}

## Parâmetros populacionais

Um caso especial de parâmetro de interesse para muitos estudos ou pesquisas ocorre quando a variável $y$ indica se uma determinada unidade populacional tem ou não uma determinada característica ou atributo, ou pertence a um determinado grupo especificado de unidades da população. São exemplos desse tipo as investigações sobre:

* Migrantes entre os habitantes de determinada região.
* Estabelecimentos agropecuários que se dedicam exclusivamente à produção leiteira numa determinada localidade.
* Estudantes do sexo feminino em escolas.
* Sondagens eleitorais, onde se deseja conhecer qual parcela dos eleitores pretende votar em determinado candidato.

Sendo uma variável indicadora, a variável $y$ irá assumir para cada unidade da população um de dois valores possíveis: o valor $1$, se a unidade possui o atributo de interesse, ou o valor $0$, caso a unidade não possua o atributo. Para fins de apresentação, seja $A \subset U$ o subconjunto das unidades da população $U$ que possuem o atributo de interesse. Então, para cada unidade $i$ da população, a variável $y$ será definida como:

$$
\displaystyle y_i = I(i \in A) =
\begin{cases} 
1, \text { se a unidade} \textit{ i } \text{possui o atributo de interesse} \\ 
0, \text{ caso contrário}   
\end{cases}
(\#eq:eqpro1)
$$

O total populacional da variável $y$ coincide com a contagem do número de unidades populacionais que possuem o atributo de interesse, ou que pertencem ao subconjunto $A$, e pode ser representado como:

$$
Y = \displaystyle \sum_{i \in U} y_i = N_A  (\#eq:eqpro2)
$$
onde $N_A$ representa o número de unidades populacionais que possuem o atributo de interesse.

Um exemplo clássico do uso de variáveis indicadoras ocorre quando se quer tabular frequências de respostas a uma pergunta categórica numa pesquisa ou censo. Considere uma pergunta cujas respostas podem ser um dos valores inteiros de $1$ a $C$, onde $C$ representa o número de categorias de resposta da pergunta. Por exemplo, para a pergunta 'Qual é o sexo do morador', há duas categorias de resposta $(C= 2)$: 1 (=Feminino) e 2 (=Masculino). Logo, para contar o número de pessoas por sexo na população, seria necessário criar duas variáveis indicadoras: $y_{1i} = I[Sexo(i) = 1]$ e $y_{2i} = I[Sexo(i) = 2]$. Estas contagens poderiam ser representadas por $N_1$ para as pessoas do sexo Feminino, e $N_2$ para as pessoas do sexo Masculino, que seriam obtidos como dois totais populacionais:


$$
\displaystyle Y_1 = \sum_{i \in U} y_{1i} = N_1 \\ Y_2 = \sum_{i \in U} y_{2i} = N_2
$$


Como já adiantado no Capítulo \@ref(visger), quando a variável $y$ é do tipo indicadora, a *média populacional* dada por: 

$$
\overline {Y} = \displaystyle \frac{1}{N} \sum_{i \in U} y_i = \frac {Y}{N} = \frac {N_A} {N} = p \, \, (\#eq:eqpro3)
$$

corresponde à *proporção* $p$ de unidades da população que têm o atributo de interesse. O parâmetro populacional *proporção* é aqui representado pela letra $p$ minúscula, já que a letra $P$ maiúscula já foi usada para denotar *probabilidade*.

Uma *proporção* pode assumir valores variando entre $0$, quando nenhuma unidade da população tem o atributo investigado, até $1$, quando todas as unidades possuem esse atributo. Muitas vezes é interessante expressar a *proporção* sob forma de porcentagem podendo então variar de 0% até 100%.

Como $y$ só pode receber valores $0$ ou $1$, a expressão da sua *variância* populacional pode ser simplificada:

$$ \hspace{-1.0cm}
S^2_y = \displaystyle \frac {1}{N-1} \left( \sum_{i \in U} y^2_i - N \overline{Y}^2 \right) = \frac{1}{N-1} \left(Np-Np^2 \right) = \frac{N}{N-1} p \left(1-p\right) (\#eq:eqpro4)
$$ 

A *variância* populacional de $y$ pode também ser definida como $\sigma^2_y = p (1-p)$. Tanto $S^2_y$ como $\sigma^2_y$ representam a dispersão da distribuição dos valores de $y$ na população. Para populações com um grande número de unidades $(N \displaystyle \rightarrow \infty)$, é fácil verificar que as duas quantidades são praticamente iguais, pois pode-se considerar $S^2_y \displaystyle \doteq p(1-p) = \sigma^2_y$.

Outra medida importante para avaliar a dispersão de uma variável é o seu *Coeficiente de Variação* ou *CV*, definido como a razão entre o *Desvio Padrão* de $y$ e sua média:

$$
CV_y = \frac {\sqrt {\sigma^2_y}} {\overline Y} = \sqrt {{p(1-p) / p^2}} = \sqrt {(1-p)/p}\quad  (\#eq:eqpro5) 
$$

**(#exm:exmprop1)** Seja uma escola de ensino fundamental onde se deseja estudar a composição dos estudantes por sexo. Vamos supor que a escola tenha um total de 1.000 estudantes, dos quais 480 são do sexo feminino. Pode-se definir a variável $y$ de interesse como:
$$
\displaystyle y_i =  \begin{cases} 1, \,\, \text {se o estudante for do sexo feminino} \\ 0, \,\, \text {caso contrário} \end{cases}
$$

O total de meninas da escola será o total da variável $y$, dado por: 
$$
 Y = N_A = \displaystyle \sum_{i \in U} y_i = 1+1+0+1+...+0+1+1 = 480 
$$
A *média* da variável $y$, que neste caso é também a *proporção* de meninas entre os estudantes da escola, é igual a:
$$
\overline Y = \frac Y N = \frac {N_A}{N} = p = \frac {480} {1.000}=0,48 \text { ou }  48\text{%}
$$

A *variância* da variável $y$, medida por $S^2_y$ é igual a:
$$
S^2_y = \frac N {N-1}p(1-p) = \frac{1.000}{999} \times 0,48 \times 0,52 \doteq 0,24985
$$

e quando medida por $\sigma^2_y$ fica igual a
$$
\sigma^2_y = p(1-p) = 0,48 \times 0,52 = 0,2496
$$

Finalmente, o *coeficiente de variação* de $y$ é igual a:
$$
CV_y = \sqrt {\frac {1-p}{p}} = \sqrt \frac{0,52}{0,48} \doteq 1,041
$$

Podemos obter os resultados acima utilizando um *script* escrito em R.


```r
# Alunos da escola
N=1000
# Meninas
Na=480
# Proporção de meninas
(p=Na/N)
```

```
## [1] 0.48
```

```r
# Variância
(S2y=N/(N-1)*p*(1-p))
```

```
## [1] 0.2498498
```

```r
(Sigma2y=p*(1-p))
```

```
## [1] 0.2496
```

```r
# Coeficiente de variação
(CVy=sqrt((1-p)/p))
```

```
## [1] 1.040833
```

Nas duas seções seguintes tratamos do problema da estimação desses parâmetros populacionais a partir dos dados de amostras aleatórias simples retiradas da população de interesse com e sem reposição, respectivamente.


## Estimação sob Amostragem Aleatória Simples Com Reposição - *AASC*

Seja $s$ uma *AASC* de tamanho $n$ selecionada de uma população composta de $N$ unidades, onde se observa uma variável indicadora $y$ como definida na seção anterior. Pode-se obter estimadores para os parâmetros populacionais de $y$ adaptando os estimadores gerais de total e média apresentados no capítulo anterior.

O total de unidades da amostra com o atributo de interesse, $n_A$, será dado pela soma amostral:

$$
t_y = \displaystyle \sum_{i \in\ s} y_i = n_A \,\, (\#eq:eqpro6) 
$$
O total de unidades na população com o atributo de interesse, $N_A$, é estimado usando:

$$
\widehat Y_{AASC} = N \times t_y / n = N \times n_A / n = \widehat N_A (\#eq:eqpro7)
$$
Como indicado no capítulo anterior, este estimador é não viciado sob AASC para qualquer variável $y$, logo é ENV também quando $y$ é do tipo indicadora, como aqui definido.

A *proporção amostral* de unidades que possuem o atributo de interesse é dada pela *média amostral*:

$$
\displaystyle \overline y = \frac {1}{n} \sum_{i \in s} y_i = \frac {n_A}{n} =  \widehat p \,\, (\#eq:eqpro8) 
$$

Pode-se facilmente verificar que $\widehat p$ é um *estimador não viciado* para a *proporção* populacional $p$, pois:

$$
\displaystyle E_{AASC} (\widehat p) = E_{AASC} (\overline y) = \overline Y = p \,\, (\#eq:eqpro9) 
$$

A *variância da proporção amostral* sob AASC é dada por:

$$
\displaystyle V_{AASC} (\widehat p) = \frac {\sigma^2_y}{n} = \frac {p(1-p)}{n} \,\, (\#eq:eqpro10) 
$$

A *variância amostral* de $y$ é dada por:

$$
\displaystyle s^2_y = \frac {n}{n-1} \widehat p (1 - \widehat p) (\#eq:eqpro11) 
$$

Sob AASC, a *variância amostral *$s^2_y$ é um estimador não viciado para a *variância populacional* $\sigma^2_y$. Assim se obtem um estimador não viciado para a variância do estimador $\widehat p$ como:

$$
\displaystyle \widehat {V}_{AASC} (\widehat p) = \frac {\widehat p (1 - \widehat p)}{n-1} \,\, (\#eq:eqpro12) 
$$
O total de unidades na população que possuem o atributo de interesse, e respectivo estimador, são obtidos por:
$$
N_A= Np\:\:\text{e}\:\: \widehat N_A=N\widehat p 
$$

A variância da estimativa de $N_A$ e seu estimador são dadas por:
$$
V_{AASC}(\widehat N_A)=N^2\frac {p(1-p)} {n}\:\:\text{e}\:\:\widehat V_{AASC}(\widehat N_A)=N^2\frac {\widehat p(1- \widehat p)} {n-1}
$$

A Tabela \@ref(tab:tabprop1) reúne os resultados principais da estimação de contagens e proporções sob *AASC*.

<center>
<table>
<caption>(#tab:tabprop1)Parâmetros e respectivos estimadores sob AASC</caption>
</table>
----------
Parâmetro                                              Estimador                                                            
------------------------------------------------------ ----------------------------------------------------------------------------------
$\displaystyle N_A = \sum_{i \in U} y_i$               $\displaystyle\widehat N_A= N\times n_A/n = N\times \widehat p$

$\displaystyle p = N_A /N$                             $\displaystyle\widehat{p}=\displaystyle n_A / n$

$\displaystyle\sigma^2_y = p (1-p)$                    $\displaystyle s^2_y=\displaystyle\frac{n}{n-1}\widehat p (1-\widehat p)$

$\displaystyle V_{AASC}(\widehat N_A)=N^2{p(1-p)}/{n}$ $\displaystyle\widehat V_{AASC}(\widehat N_A)=N^2\widehat{p}(1-\widehat{p})/(n-1)$

$\displaystyle V_{AASC} (\widehat p) ={p(1-p)}/{n}$    $\displaystyle\widehat V_{AASC}(\widehat{p})=\widehat{p} (1-\widehat{p})/(n-1)$

----------
</center>


## Estimação sob Amostragem Aleatória Simples Sem Reposição - *AAS*

No caso de uma amostra $s$ obtida por seleção do tipo *AAS*, as expressões da soma amostral $t_y$, da proporção amostral $\widehat p$ e da variância amostral $s^2_y$ têm a mesma forma já apresentada acima para amostras obtidas por *AASC*. Em consequência, também são idênticos os estimadores para o total populacional $N_A$ e a proporção populacional $p$. Entretanto, uma diferença é que no caso da *AAS* a variância amostral $s^2_y$ é um estimador não viciado para $S^2_y$ e não para $\sigma^2_y$. Também são diferentes as expressões para as variâncias dos estimadores amostrais e seus correspondentes estimadores não viciados.

Foi visto no Capítulo \@ref(aas) que as variâncias dos estimadores do total e da média são dadas pelas expressões:

$$
V_{AAS} (\widehat Y) = N^2 \left( \frac 1 n - \frac {1}{N} \right) {S^2_y} \,\, (\#eq:eqpro13) 
$$

$$
V_{AAS} (\overline y) = \left( \frac 1 n - \frac {1}{N} \right) {S^2_y} \,\, (\#eq:eqpro14) 
$$

Então, no caso de variáveis $y$ do tipo indicadoras, tem-se que as variâncias do estimador do total e da proporção populacionais são dadas por:

$$
V_{AAS} (\widehat {N} _A) = N^2 \left( \frac 1 n - \frac {1}{N} \right) \frac{N}{N-1} p(1-p) \,\, (\#eq:eqpro15) 
$$

$$
V_{AAS} (\widehat p) = \left( \frac 1 n - \frac {1}{N} \right) \frac{N}{N-1} p(1-p) \,\, (\#eq:eqpro16) 
$$

Note que para populações onde o número de unidades $N$ é suficientemente grande, tem-se que $V_{AAS} (\widehat p) \doteq \displaystyle\frac {p (1 - p)}{n}$, resultando numa equivalência aproximada entre os desempenhos da *AAS* e da *AASC* na estimação da proporção populacional. Intuitivamente, isso ocorre porque a probabilidade de seleção repetida sob *AASC* tende a ser muito pequena no caso de populações muito grandes.

Utilizando $s^2_y$ como estimador não viciado para $S^2_y$ chega-se aos estimadores para as variâncias dos estimadores de total e proporção:

$$
\widehat V_{AAS} (\widehat {N} _A) = N^2 \left( \frac 1 n - \frac {1}{N} \right) \frac {n\widehat p (1 - \widehat p)} {n-1} \,\,(\#eq:eqpro17) 
$$

$$
\widehat V_{AAS} (\widehat p) = \left( \frac 1 n - \frac {1}{N} \right) \frac {n\widehat p (1 - \widehat p)} {n-1} \,\,(\#eq:eqpro18) 
$$

A Tabela \@ref(tab:tabprop2) reúne os resultados principais da estimação de contagens e proporções sob *AAS*.

<center>

<table>
<caption>(#tab:tabprop2)Parâmetros e respectivos estimadores sob AAS</caption>
</table>

----------
Parâmetro                                                                             Estimador 
------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------
$\displaystyle N_A=\sum_{i \in U} y_i$                                                $\displaystyle\widehat N_A = N \times n_A / n = N \times\widehat p$

$\displaystyle p = N_A/N$                                                             $\displaystyle\widehat{p} = n_A/n$

$\displaystyle S^2_y =\frac{N}{N-1}p(1-p)$                                            $\displaystyle s^2_y =\displaystyle\frac{n}{n-1} \widehat p (1 - \widehat p)$

$\displaystyle V_{AAS}(\widehat N_A)= N^2\left(\frac1 n-\frac1 N\right)S^2_y$         $\displaystyle\widehat V_{AAS}(\widehat N_A)=N^2\left(\frac 1 n-\frac {1}{N}\right)\frac{n\widehat p (1-\widehat p)}{n-1}$

$\displaystyle V_{AAS}(\widehat p)=\displaystyle\left(\frac1 n-\frac1 N\right)S^2_y$  $\displaystyle\widehat V_{AAS}(\widehat p)=\left(\frac 1 n-\frac{1}{N}\right)\frac{n\widehat p(1-\widehat p)} {n-1}$
----------
</center>
 

## Distribuição amostral exata de estimadores de proporção sob AASC e AAS

Na *AASC* as unidades amostrais são selecionadas com igual probabilidade e com reposição a cada sorteio. Então as variáveis aleatórias $Y_k$ que correspondem aos valores observados na amostra a cada sorteio $k$,  $k=1, \dots, n$, são independentes e identicamente distribuídas com probabilidades definidas por:

$$ \hspace{-1.0cm}
\begin{align} \displaystyle P(Y_k = 1) = P(y_{i_k} \text{ ter o atributo de interesse}) = \frac {N_A} {N} = p \\ P(Y_k = 0) = P(y_{i_k} \text{ não ter o atributo de interesse}) = 1 - \frac {N_A} {N} = 1-p \end{align}\,\, (\#eq:eqpro19) 
$$

Dessa maneira fica configurada uma distribuição de **_Bernoulli$(p)$_** para cada uma dessas variáveis:
$$
\begin{array}{c | c c} 
 {v} & \ 1 & 0 \\
\hline \text{$P(Y_k = v)$} & p & 1-p  \\
\end{array}
$$
Ainda sob *AASC*, a soma amostral $t_y = n_A$, que representa o número de unidades na amostra com o atributo de interesse, é então dada pela soma de $n$ variáveis aleatórias IID com distribuição **_Bernoulli$(p)$_**. Portanto, sob *AASC* a variável aleatória $t_y = n_A$ segue uma distribuição **_Binomial$(n,p)$_**. Imediatamente tem-se que:

$$
E_{AASC}(n_A) = n p {\quad \text e \quad} V_{AASC}(n_A) = n p (1-p) \,\, (\#eq:eqpro20) 
$$

Seguindo o mesmo raciocínio, pode-se ter o valor esperado e a variância de $\widehat p$:

$$
\displaystyle E_{AASC} (\widehat p) = E_{AASC} \left(\frac{n_A}{n}\right) = p  {\quad\text e \quad} V_{AASC}(\widehat p) = \frac {p (1-p)} {n} \,\, (\#eq:eqpro21) 
$$

Outro resultado importante é que nesse caso se pode obter a distribuição de probabilidades exata de $\widehat p$, pois:

$$ \hspace{-0,4cm}
\displaystyle P \left(\widehat p = \frac v n \right) = P(n_A = v) = \binom{n} {v} p^v (1-p)^{n-v} ,\quad \forall\, v=0, 1, 2, ..., n  (\#eq:eqpro22) 
$$


Esta distribuição corresponde apenas a uma transformação escalar da distribuição **_Binomial$(n,p)$_**, onde a contagem de sucessos ($n_A$) é dividida pelo número de sorteios ($n$).

Sob *AAS*, a distribuição da contagem de sucessos ($n_A$) tem uma distribuição de probabilidades 
**_Hipergeométrica$(N, N_A, n)$_**. Isto ocorre porque sob *AAS* os $n$ sorteios são feitos da população sem reposição, e portanto, a cada nova unidade sorteada, o número de unidades remanescentes na população com o atributo de interesse varia, dependendo do número dessas unidades já selecionadas.

O número total de amostras aleatórias simples sem reposição de tamanho $n$ que podem ser selecionadas de uma população com $N$ unidades é dado por $\binom{N}{n}$; o número dessas amostras com exatamente $v$ unidades com a característica em estudo, e $n-v$ unidades sem essa característica, pode se calculado por $\binom{N_A}{v}\binom{N-N_A}{n-v}$. Sendo assim, a distribuição de probabilidades da variável aleatória $t_y = n_A$ é dada por:

$$
\displaystyle P \left(n_A = v \right) = \frac {\binom{N_A} {v} \binom{N-N_A} {n-v}}{\binom{N} {n}} , \quad \forall\, v=0, 1, 2, ..., min(n;N_A) \,\, (\#eq:eqpro23) 
$$

e assim fica também determinada a distribuição exada de probabilidades do estimador $\widehat p$, que é a mesma $n_A$, com os valores possíveis da proporção amostral divididos pelo tamanho da amostra $n$.

Consequentemente tem-se que o valor esperado de unidades com o atributo de interesse na amostra e sua variância serão dados por:

$$
\displaystyle E_{AAS}(n_A)=n\frac{N_A}N=np \quad\text e\quad V_{AAS}(n_A)=np(1-p)\frac{N-n}{N-1} \,\, (\#eq:eqpro24)
$$

Para o estimador, $\widehat p=n_A/n$, da proporção de unidades com o atributo de interesse na população tem-se:

$$
\displaystyle E_{AAS}(\widehat p)=p \quad\text e\quad V_{AAS}(\widehat p)=\left(\frac1n-\frac1N\right)S^2_y\,\, (\#eq:eqpro25)
$$

## Intervalos de confiança para proporções na Amostragem Aleatória Simples

Foi visto que na *Amostragem Aleatória Simples*, tanto com ou sem reposição, são conhecidas as distribuições exatas para o estimador $\widehat p$. Portanto, é possível obter os limites inferior e superior para intervalos de confiança para a proporção $p$, com um nível de significância $\alpha$ fixado. Para isso, no caso de *AASC*, é necessário resolver o sistema de equações determinando os valores de $\widehat p_I$ e $\widehat p_S$ que satisfaçam:

$$
\begin{cases} 
\displaystyle \sum _{v=0}^{n_A} \binom {n}{v} \widehat p_S^v (1 - \widehat p_S)^{n-v} = \alpha / 2 
\\\\ 
\displaystyle \sum _{v=n_A}^n \binom {n}{v} \widehat p_I^v (1 - \widehat p_I)^{n-v} = \alpha / 2 (\#eq:eqpro26) 
\end{cases}
$$
No caso da *AAS*, o sistema a ser resolvido é baseado na distribuição Hipergeométrica como se segue:

$$
\begin{cases} 
\displaystyle \sum_ {v=0}^{n_A}\frac {\binom{N\widehat p_S}{v} \binom{N-N\widehat p_S} {n-v}}{\binom{N}{n}} = \alpha / 2
\\\\ 
\displaystyle \sum_ {v=n_A}^{n}\frac {\binom{N\widehat p_I}{v} \binom{N - N \widehat p_I} {n-v}} {\binom{N}{n}} = \alpha / 2 (\#eq:eqpro27) 
\end{cases}  
$$

Em ambos os casos $1 - \alpha$ é o *nível de confiança* desejado. Por exemplo, para intervalos de 95% de confiança, deve-se usar $\alpha= 0,05$.

A solução desses sistemas costumava ser trabalhosa, exigindo aplicação de métodos iterativos que consumiam quantidade razoavelmente grande de recursos computacionais. Atualmente, com o avanço dos métodos computacionais, esse problema pode facilmente ser resolvido, por exemplo, com o uso do R. Uma maneira é utilizar as funções *qbinom* e *qhyper* que podem calcular os quantis das distribuições Binomial e Hipergeométrica para $\alpha /2$ e $1 -\alpha /2$.

Além disso há outros programas já prontos facilmente utilizávies como, por exemplo, as funções *binconf* e *confCI* incluídas, respectivamente nos pacotes *Hmisc* e *prevalence* do R. Essas funções estimam intervalos de confiança para vários métodos além do mostrado acima, como o da aproximação Normal, apresentado na próxima seção, além de outras abordagens.
Há, também, no pacote *survey* uma função específica, *svyciprop*, para calcular intervalos de confiança para proporções. Uma característica interessante do pacote *survey* é que é possível determinar a utilização do fator de correção para populações finitas, quando a seleção é sem reposição.

**(#exm:exmprop2)** Voltando ao exemplo da escola com $N=1.000$ alunos, suponha que foi selecionada uma amostra aleatória simples de tamanho $n=125$ e foi investigado o sexo de cada um desses alunos, sendo que 60 são do sexo feminino. Constuir um intervalo de aproximadamente 95% de confiança para a proporção de alunos do sexo feminino, utilizando os vários métodos  da linguagem R sugeridos acima.



















