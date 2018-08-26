# Amostragem Sistemática Simples (AS)

A Amostragem Sistemática Simples (AS) é um método para selecionar unidades de uma amostra com *equiprobabilidade*, que oferece uma alternativa bastante usada à AAS.

Consiste em selecionar cada $K$-ésima unidade de um cadastro ou lista, começando de uma *partida aleatória* (sorteada).

As unidades são selecionadas *sem reposição*, e têm a mesma chance $(1/K)$ de serem selecionadas.

Seja $U = \{{ 1 , 2 , ..., N }\}$ a população, de tamanho $N = nK+c$, com $0 \le c < K$, sendo que o inteiro $K$ é chamado de *intervalo de seleção*; $n$ é igual ao valor inteiro da divisão de $N$ por $K$; e $c$ é o resto da divisão de $N$ por $K$.

## Esquema de Seleção da Amostra

O esquema de seleção de uma amostra sistemática consiste nos seguintes passos: 

(1) Selecione um número inteiro $r$ ao acaso entre $1$ e $K$, isto é $1 \le r \le K$, com probabilidades iguais a $1/K$ para todos os inteiros no intervalo ($r$ tem distribuição Uniforme Discreta de parâmetro $K$, ou seja, *$r \sim UD(K)$*).

(2) Selecione a amostra $s_r$ usando a regra sistemática: $s_r = \{{ i : i = r + (j-1)K \le N; j = 1, ..., n_r }\},\, r = 1, ..., K$, sendo $n_r$ o *tamanho efetivo da amostra*. 

Há exatamente $K$ amostras distintas possíveis tais que:  $p(s)=\left\{\begin{array}{ll} 1/K & \textrm{se} \,\,\,\,s=s_r, \,\,r=1,2,...,K,\\ 0 & \textrm{caso contrário.}\end{array}\right.\,\,\,$ 
 
O tamanho efetivo da amostra *não é fixo a priori*. Vai depender do sorteio da partida aleatória.

$n_r=\left\{\begin{array}{ll} n+1 & \textrm{quando} \,\,\,\,r \le c \\ n & \textrm{quando}\,\,\,\,r>c\end{array}\right.\,\,\,$ 
 
O tamanho da amostra é $n+1$ com probabilidade $c/K$ e $n$ com probabilidade $1-(c/K)$.

**Exemplo 7.1:** De uma população de 20 unidades selecione uma amostra sistemática simples com intervalo de seleção igual a 5. 

Amostra Sistemática $(N=20,\,\, K=5)$

Então $20 = 4\times 5 + 0$, resultando em $n=4$ e $c=0$.

Escolhendo $r=1$, as unidades na amostra seriam $1 + ( j – 1 ) K$ , para $j = 1,..., n$, isto é: $s_1 = \{{ 1 ; 1+5 ; 1+10 ; 1+15 }\} = \{{ 1 ; 6 ; 11; 16 }\}$.

Existem 5 amostras distintas, todas de tamanho 4.

**Exercício 7.1:** Identifique as outras 4 amostras possíveis referidas no exemplo 7.1. 

**Exemplo 7.2:** Especifique as amostras possíveis através de uma seleção sistemática supondo que a população seja de 19 unidades e que o tamanho desejado da amostra seja de 4 unidades. 

Amostra Sistemática $(N=19, \,\,n=4)$

Então $19 = 4 \times 4 + 3$, resultando em $K=4$ e $c=3$.

As amostras possíveis são:

$s_1 = \{{ 1 ; 5 ; 9 ; 13 ; 17 }\}$ com $n_1=5$;

$s_2 = \{{ 2 ; 6 ; 10 ; 14 ; 18 }\}$ com $n_2=5$;

$s_3 = \{{ 3 ; 7 ; 11 ; 15 ; 19 }\}$ com $n_3=5$;

$s_4 = \{{ 4 ; 8 ; 12 ; 16 }\}$ com $n_4=4$.

**Exemplo 7.3:** Calcule o tamanho efetivo da amostra resultante da seleção sistemática de uma população de 149 unidades e de tamanho desejado da amostra de 60 unidades. 

Amostra Sistemática $N=149,\,\,n=60)$

Então $149 = 60 \times 2 + 29$, resultando $K=2$ com $n=74$ e $c=1$.

$s_1 = \{\textrm{números ímpares até 149, inclusive}\}$ com $n_1=75$;

$s_2 = \{\textrm{números pares até 148, inclusive }\}$ com $n_2=74$;

Tamanho efetivo da amostra é 74 ou 75.

**Exemplo 7.4:** Apresente a composição de uma amostra sistemática de uma população de 36 unidades com intervalo de seleção igual a 4, tamanho esperado da amostra de 9 unidades e que 4 tenha sido o número selecionado para a partida.  

Amostra Sistemática $(N=36, K=4, n=9, \textrm{partida}\,\,(r=4))$

$$\begin{array}{|c|c|c|c|c|c|}\hline \textrm {l/c} & 1 & 2 & 3 & 4 & 5 & 6 \\\hline 1 &  & &  & X & & \\\hline 2 & & X & & & & X \\\hline 3 &  & &  & X & & \\\hline 4 & & X & & & & X \\\hline 5 &  & &  & X & & \\\hline 6 & & X & & & & X \\\hline  \end{array}$$
Portanto as unidades atribuídas às celas da tabela com "X" correpondem as unidades selecionadas para a amostra.

**Exemplo 7.5:** Apresente a composição de uma amostra sistemática de uma população de 36 unidades com intervalo de seleção igual a 3, tamanho esperado da amostra de 12 unidades e que 2 tenha sido o número selecionado para a partida.  

Amostra Sistemática $(N=36, K=3, n=12, \textrm{partida}\,\,(r=2))$ 

$$\begin{array}{|c|c|c|c|c|c|}\hline \textrm {l/c} & 1 & 2 & 3 & 4 & 5 & 6 \\\hline 1 &  & X &  & & X & \\\hline 2 & & X & & & X &  \\\hline 3 & & X & & & X & \\\hline 4 & & X & & & X &  \\\hline 5 & & X & & & X & \\\hline 6 & & X & & & X & \\\hline  \end{array}$$
Portanto as unidades atribuídas às celas das colunas 2 e 5 correpondem as unidades selecionadas para a amostra.

## Aspectos Importantes na Amostragem Sistemática Simples

Seguem alguns aspectos a serem destacados na amostragem sistemática, bem como as suas vantagens e desvantagens.

- Requer acesso a cadastro tipo lista, mas a lista pode ser construída ao mesmo tempo em que amostra é escolhida.

- As unidades são selecionadas uma de cada vez.

- Precisa especificar: Intervalo de amostragem (de seleção), $K$; e o ponto de partida (escolhido ao acaso), $r$.

**Vantagens da AS**

- Mais fácil de selecionar que AAS.

- Espalha a amostra mais uniformemente sobre a população.

- Fácil de estimar as características da população (exceto variância).

**Desvantagens da AS**

- Custo mais elevado para coletar dados (amostra mais espalhada).

- Periodicidade no cadastro pode resultar em estimativas deficientes, a menos que as unidades sejam reordenadas.

- Complicações para estimar variâncias e precisão.

## Probabilidades de Inclusão na Amostragem Sistemática

É fácil mostrar que a probabilidade de seleção ou inclusão na amostra da unidade $i$ é dada por: $\pi_i=1/K,\,\,i=1,\,\dots,\,\,N$.

A probabilidade de seleção ou inclusão das unidade $i$ e $j$ na amostra é dada por: 
$\pi_{ij}=\left\{\begin{array}{ll} 1/K & ,\,\,i \ne j \,\in s_r,\,\,\,r=1,\,\dots,\,K,\\\ 0 &,\,\, \textrm{caso contrário}.\end{array}\right.\,\,\,$ 
 
Donde se conclui que unidades em amostras diferentes nunca podem aparecer juntas na mesma amostra!

## Variáveis Aleatórias Indicadoras

Note que ao escolher $r,\, 1\le r\le K$, selecionamos a amostra inteira.

Sejam portanto as variáveis indicadoras

$I(r)=\left\{\begin{array}{ll} 1 & ,\,\,\textrm{se a amostra é}\,s_r\,,\ \textrm {para}\,1\le r\le K.\\ 0 &,\,\, \textrm{caso contrário}.\end{array}\right.\,\,\,$ 

Então:

$E_{AS}[I(r)]=1/K\,,\,\,r=1,\,\dots,\,K$.

**Propriedades das Variáveis Aleatórias Indicadoras**

$V_{AS}[I(r)]=E_{AS}[I(r)^2]-{E_{AS}[I(r)]}^2=\frac{1}{K}\left(1-\frac{1}{K}\right)$

$COV_{AS}[I(r),I(q)]=E_{AS}[I(r)]I(q)]-\frac{1}{K^2}=0-\frac{1}{K^2}=-\frac{1}{K^2}$.

já que apenas uma amostra pode ser escolhida de cada vez. 

## Composição de Amostra Sistemática de Intervalo K 

Seguem as possíveis amostras sistemáticas de intervalo $K$ indicadas nas colunas da tabela a seguir.  

$$\begin{array}{|c c c c c |} \hline \phantom{y} & \phantom{y} & \phantom{y} & \phantom{y}\phantom{y2}\textrm {   Amostra Número} & \phantom{y_1} & \phantom{\dots} & \phantom{y_c}\\\hline \end{array}\\ \begin{array}{|c|c|c|c|c|} \hline 1 & 2 & \dots & c & \dots & K \\\hline y_1 & y_2 & \dots & y_c & \dots & y_K \\\hline y_{K+1} & y_{K+2} & \dots & y_{K+c}& \dots & y_{2K} \\\hline \vdots & \vdots & \vdots & \vdots & \vdots& \vdots\\\hline y_{(n-1)K+1} & y_{(n-1)K+2} &\dots & y_{(n-1)K+c} & \dots & y_{nK} \\\hline y_{nK+1} & y_{nK+2} & \dots & y_{nK+c} \\\hline  \end{array} $$


**Uma Mudança de Notação Útil**

Há uma outra forma de visualizar a composição de possíveis amostras sistemáticas de intervalo $K$ indicadas nas colunas da tabela a seguir, definindo $y_{ri}$, sendo $r$ o número da possível amostra $(r=1,\dots, K)$ e $i$ as unidades da respectiva amostra $(i=1,\dots,n_r)$ ou seja, $i=\left\{\begin{array}{ll} 1, \dots, n+1 & \textrm{se}\,\,\,\,r \le c \\ 1, \dots, n & \textrm{se }\,\,\,\,r>c\end{array}\right.\,\,\,$ 


$$\begin{array}{|c c c c c |} \hline &  &  & \phantom{y}\textrm {Amostra (grupo) Número} &  & \phantom{y}\\\hline \end{array}\\ \begin{array}{|c|c|c|c|c|} \hline 1 & 2 & \dots & c & \dots & K \\\hline y_{11} & y_{21} & \dots & y_{c1} & \dots & y_{K1} \\\hline y_{12} & y_{22} & \dots & y_{c2}& \dots & y_{K2} \\\hline \vdots & \vdots & \vdots & \vdots & \vdots & \vdots \\\hline y_{1n} & y_{2n} & \dots & y_{cn} & \dots & y_{Kn} \\\hline y_{1(n+1)} & y_{2(n+1)} & \dots & y_{c(n+1)} \\\hline  \end{array} $$

## Estimação sob Amostragem Sistemática

A ideia é definir estimadores dos parâmetros alvo descritos, a seguir:

$Y=\sum_{i \in U} y_i$ o total populacional da variável $y$; 

$\overline Y=\frac{Y}{N}=\frac{\sum_{i \in U} y_i}{N}$ a média populacional da variável $y$; e 

$S_y^2= \frac{1}{N-1}\sum_{i \in U}(y_i-\overline Y)^2$ a variaância populacional da variável $y$.

Seja $t_r$ o total para a amostra $s_r$, $r=1,\,\dots,\,K$.

Logo $t_r=\displaystyle \sum_{i=1}^{n_r}y_{ri}$, onde $n_r$ é o tamanho da amostra $s_r$.

Note que $\overline y_r=t_r/n_r= \overline y$, a média da amostra $s_r$.

## Estimação do Total Populacional sob Amostragem Sistemática
 
 O total populacional pode ser escrito como: $Y=\displaystyle \sum_{r=1}^{K}t_r$.    

Seja $\hat{Y}_{AS}=\sum_{i \in s_r}y_{ri}/(1/K)=Kt_r=K \displaystyle \sum_{r=1}^{K}I(r)t_r$. Então:

$E_{AS}(\hat{Y}_{AS})=K \displaystyle \sum_{r=1}^{K}E_{AS} \left [I(r) \right ]t_r= K \sum_{r=1}^{K}\frac{1}{K}t_r= \sum_{r=1}^{K}t_r = Y$.

Logo $\hat{Y}_{AS}$ é não viciado para o total populacional $Y$.

Quando o tamanho populacional $N$ é desconhecido, pode ser estimado usando:

$\hat{N}_{AS}=Kn_r=K \displaystyle \sum_{r=1}^{K}I(r)n_r$.

$\hat{N}_{AS}$ é estimador não viciado para $N$, pois: 

$E_{AS}(\hat{N}_{AS})=K \displaystyle \sum_{r=1}^{K}E_{AS} \left [I(r)\right]n_r= K \sum_{r=1}^{K} \frac{1}{K} n_r = \sum_{r=1}^{K}n_r=N$.

## Estimação da Média Populacional sob Amostragem Sistemática

A média populacional $\overline Y=Y/N=\displaystyle \sum_{r=1}^{K}t_r/\sum_{r=1}^{K}n_r$ pode ser vista como uma razão (de totais).

Um estimador não viciado para a média quando $N$ é conhecido é dado por: $\hat{\overline Y}_{AS}= \hat Y_{AS}/N=\frac {1}{N}\,K\,t_r$.

Quando $N$ é desconhecido, um estimador alternativo para a média é: 

$\overline y_{AS}= \hat Y_{AS}/\hat N_{AS}=K\,t_r/K\,n_r=t_r/n_r=\overline y_r=\overline y,\,\,\,\textrm{a média amostral.}$

Este estimador tem vício para estimar a média populacional, exceto quando $N=nK$, pois:

\begin{eqnarray}E_{AS}(\overline{y}_{AS}) & = & E_{AS}(\overline y)= E_{AS} \left [\sum_{r=1}^{K}I(r)\overline y_r \right] \\ &=& \frac{1}{K} \sum_{r=1}^{K}\overline y_r = \frac{1}{K} \sum_{r=1}^{K}\frac {t_r}{n_r} \\& \neq & \frac {\sum_{r=1}^{K}t_r}{\sum_{r=1}^{K}n_r} = \overline Y, \,\,\textrm {exceto quando N=nK.}\end{eqnarray}

## Variância de $\hat Y_{AS}$ Sob Amostragem Sistemática

\begin{eqnarray}V_{AS}(\hat{Y}_{AS}) & = & K^2\,V_{AS} \left[\sum_{r=1}^{K}I(r)t_r \right] \\ & = & K^2 \left[ {\sum_{r=1}^{K}{t_r}^2 V_{AS}[I(r)]} + \sum_{r\neq K}COV_{AS}[I(r),I(q)]t_rt_q \right] \\ & = &  K^2 \left[\sum_{r=1}^{K}{t_r}^2 \frac{1}{K}\left(1-\frac{1}{K}\right)+\sum_{r\neq K}t_rt_q\left(-\frac{1}{K^2}\right)\right]\\ & = &  K^2 \left[\frac{1}{K}\sum_{r=1}^{K}{t_r}^2 - \frac{1}{K^2}\left(\sum_{r=1}^{K}{t_r}^2+\sum_{r\neq K}t_rt_q\right)\right] \\ & = &  K \left[\sum_{r=1}^{K}{t_r}^2 - \left(\sum_{r=1}^{K}{t_r}\right)^2/K\right] =K\sum_{r=1}^{K}(t_r-\overline t)^2 \end{eqnarray}

sendo: \ $\overline t= \displaystyle\sum_{r=1}^{K} t_r/K = Y/K$

Variância de $\hat Y_{AS}$ Sob Amostragem Sistemática

Portanto a variância é calculada a partir da soma de quadrados dos desvios entre totais das amostras possíveis.

**Notas**

1. Como $r$ pode tomar apenas um valor, $V_{AS}(\hat Y_{AS})$ não pode ser diretamente estimada a partir da amostra. Isto ocorre porque $\pi_{ij} = 0$ para quaisquer duas unidades em amostras distintas.

2. As Tabelas 8.3 e 8.5 (Cochran, pp. 211-212) mostram como a ordenação dos valores da variável de pesquisa para unidades populacionais pode afetar a eficiência de amostras sistemáticas.

3. Para populações em “ordem aleatória”, amostragem sistemática é o mesmo que amostragem aleatória simples sem reposição (Cochran, seção 8.5). 

4. Para populações com tendência linear, amostragem sistemática é melhor que AAS (Cochran, seção 8.6).

5. Amostragem sistemática é como uma forma de *amostragem estratificada*, com sorteio de apenas uma unidade por estrato (Cochran, p. 215).

6. Para populações periódicas, amostragem sistemática em sincronia com o período é um desastre (Cochran, p. 218).

**Considere o Caso Especial Onde $N = n \times K$**

Da tabela 8.2 do Cochran é fácil ver que $\overline y_r= t_r/n_r$ é um estimador não viciado para $\overline Y$. Como

$\displaystyle\sum_{r=1}^{K}\sum_{i=1}^{n}(y_i-\overline Y)^2=n\sum_{r=1}^{K}(\overline y_r - \overline Y)^2+\sum_{r=1}^{K}\sum_{i=1}^{n}(y_{ri}-\overline y_r)^2$

temos que $(N-1)S_y^2=nKV_{AS}(\overline y)+K(n-1)S_D^2$

onde $S_y^2$é a variância populacional “total”, e $S_D^2$ é a variância *dentro* das amostras sistemáticas.

$V_{AS}(\overline y)$ é a variância de $\overline y$ sob Amostragem Sistemática.

Portanto, conforme Cochran, p. 208, o estimador de média é mais eficiente sob Amostragem Sistemática que sob AAS se e somente se $S_D^2>S_y^2$ .

**Uma Expressão Alternativa para $V_{AS}(\overline y)$ quando $N = n \times K$**

Teorema 8.2 (Cochran - p. 209)

$V_{AS}(\overline y)=\frac{S_y^2}{n}\left(\frac{N-1}{N}\right)[1+(n-1)\rho\,]$

onde:

$\rho=\frac{1}{(n-1)(N-1)S_y^2}\,\,\displaystyle \sum_{r=1}^{K}\sum_{i \neq j}^{n}(y_{ri}-\overline Y)(y_{rj}-\overline Y)$ é a correlação intraclasse dentro das amostras possíveis.

Este resultado mostra que a correlação positiva entre unidades de uma mesma amostra aumenta a variância da média amostral com seleção sistemática quando comparada com a variãncia da média amostral com seleção AAS.

Notando que sob AAS, $V_{AAS}(\overline y)=\left(1-\frac{n}{N}\right)\frac{S_y^2}{n}$.

Então, temos a relação aproximada:

$$\frac{V_{AS}(\overline y)}{V_{AAS}(\overline y)}=1+(n-1)\rho\,\left\{\begin{array}{lll} < 1 & \textrm{se} \,\,\,\rho<0\,, \\ = 1 & \textrm{se} \,\,\,\rho=0\,,\\ > 1 & \textrm{se} \,\,\,\rho>0\,.\end{array}\right.$$

Cabe notar que razões do tipo $V_{AS}(\overline y)/V_{AAS}(\overline y)$ são chamadas de *Efeito do Plano Amostral (EPA)*. No inglês, o termo é *design effect*, abreviado como *deff*.

## Estimação de Variâncias dos Estimadores

Na AS não há estimador não viciado de variância para os estimadores de total e de média.

Soluções usuais:

1. Quando a população está bem ‘embaralhada’ (permutação aleatória), pode-se usar os estimadores de variância correspondentes à AAS de igual tamanho.

2. Alternativamente pode-se usar replicação: selecionar $q$ amostras sistemáticas de tamanhos $n/q$ cada uma.
