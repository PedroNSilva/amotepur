# Amostragem Sistemática Simples (AS) {#AS}

A Amostragem Sistemática Simples (AS) é um método para selecionar com *equiprobabilidade* unidades de uma dada população especificada para compor a amostra desejada. Por sua simplicidade, trata-se de uma alternativa à AAS bastante utilizada na prática. Um dos motivos para justificar sua utilização é que o método pode ser aplicado mesmo quando não existe cadastro prévio da população de pesquisa, podendo este cadastro ser construído ao mesmo tempo que é feita a seleção da amostra.

O método consiste em selecionar cada $K$-*ésima* unidade da população a ser amostrada, começando de uma *partida aleatória* sorteada entre os números inteiros de $1$ a $K$. A amostra resultante é *sem reposição*, e todas as unidades da população têm a mesma chance $(1/K)$ de serem selecionadas, como se verá adiante.

Seja $U = \{{ 1 , 2 , ..., N }\}$ uma população de tamanho $N = nK+c$, com $0 \le c < K$, sendo que o número inteiro $K$ é chamado de *intervalo de seleção*, $n=[N/K]$ é igual à parte inteira da divisão de $N$ por $K$ e $c$ é o resto dessa mesma divisão.

AS pode ser utilizada para selecionar uma amostra de um cadastro ou lista de unidades da população mediante um algoritmo de processamento sequencial de lista, se disponível. Na ausência de um cadastro prévio, o método pode ser implementado bastando para isso especificar um mecanismo para cadastramento sequencial das unidades populacionais e definir o valor de $K$. Isto feito, deve ser selecionada a *partida aleatória* e iniciado o cadastramento das unidades da população. O algoritmo de seleção das unidades da amostra pode ser facilmente implementado em abos os casos (cadastro prévio ou construído durante a operação de pesquisa).

**(#exm:exmsis1)** Suponha que se deseja aplicar um questionário a uma amostra dos espectadores de uma peça teatral sendo encenada em determinado teatro, num determinado dia. Nesse caso não estaria disponível uma lista das pessoas que irão naquela data ao teatro. Pode-se selecionar uma AS utilizando os seguintes passos:

  1)  Definir o valor de $K$. Por exemplo, seja $K=10$ significando que ao final a amostra será composta por aproximadamente $10%$ dos espectadores da noite;
  2)  Selecionar a *partida aleatória* entre $1$ e $10$. Suponha que o número escolhido seja $3$;
  3)  Entrevistar os espectadores, de acordo com a ordem de chegada (ou de saída), começando pelo de número $3$ e seguindo com os de números de chegada iguais a $13,\,23,\,33,...$.
  
Duas características que funcionam como um apelo para a adoção do método de seleção por AS são exatamente sua simplicidade, já que ao definir-se a primeira unidade amostral as demais estarão automaticamente definidas, e a não exigência de ter disponível um cadastro da população para a seleção da amostra. Na verdade, o cadastro vai sendo contruído ao mesmo tempo que a amostra vai sendo selecionada. 

Essas características foram determinantes, por exemplo, da adoção de AS para a seleção dos domicílios que, em cada setor censitário, deveriam responder ao questionário da amostra nos Censos Demográficos realizados pelo IBGE de 1960 até 2000. Para implementar o método, cada recenseador utilizava um formulário denominado 'Folha de coleta do setor' para cadastrar os domicílios que ia encontrando ao percorrer um Setor Censitário que lhe fora atribuído. Este formulário servia de cadastro para a seleção da amostra sistemática, e indicava ao recenseador em que domicílios devia aplicar o questionário da amostra, em lugar do questionário simplificado que era aplicado aos demais domicílios não incluídos na amostra sistemática. Ao  terminar de percorrer o setor censitário, o recenseador teria realizado o Censo e construído um cadastro de domicílios (o próprio Censo!) para ser utilizado em outras pesquisas por amostra realizadas pelo IBGE. Entre os censos de 1960 e 1980, o intervalo de seleção usado foi sempre $K=4$. Começando no Censo de 1991, o IBGE passou a usar valores de $K$ que podiam variar conforme o tamanho do município em que a amostra estava sendo selecionada. Maiores detalhes sobre a amostragem no Censo 2000 podem ser vistos em ttps://biblioteca.ibge.gov.br/visualizacao/livros/liv5295.pdf.
  
## Método de seleção da amostra

O método de seleção de uma *amostra sistemática simples* pode ser generalizado a partir do Exemplo \@ref(exm:exmsis1), consistindo nos seguintes passos: 

(1) Defina o valor de $K$, o *intervalo de seleção da AS*;
(2) Selecione a *partida aleatória*, igual a um número inteiro $r$ sorteado ao acaso entre $1$ e $K$, isto é $1 \le r \le K$, com probabilidades iguais a $1/K$ para todos os inteiros no intervalo ($r$ tem distribuição Uniforme Discreta de parâmetro $K$, ou seja, *$r \sim UD(K)$*);

(3) Selecione a amostra $s_r$ usando a regra sistemática: 

$$
 s_r = \{{ i : i = r + (l-1)K \le N;\,\,\, l = 1, ..., n_r }\},\,\,\,r = 1, ..., K 
(\#eq:eqsis1)
$$

onde $n_r$ será o *tamanho efetivo da amostra*. 

Há exatamente $K$ *amostras sistemáticas* distintas possíveis tais que: 

$$
 p(s)=\left\{\begin{array}{ll} 1/K & \textrm{se} \,\,\,\, s=s_r, \,\,r=1,\,\,\,2,\,\,\,...,\,\,\,K \\ 0 & \textrm{caso contrário}   \end{array} \right.
 (\#eq:eqsis1b)
$$
 
O tamanho efetivo da amostra *não é fixado a priori*, pois depende do valor do sorteio da *partida aleatória* $r$:

$$
n_r=\left\{\begin{array}{ll} n+1 & \textrm{quando} \,\,\,\,r \le c \\ n & \textrm{quando}\,\,\,\,r>c\end{array}\right.
$$ 
 
O tamanho efetivo da amostra será $n+1$ com probabilidade $c/K$ e $n$ com probabilidade $1-(c/K)$.

**(#exm:exmsis2)** De uma população de 20 unidades selecione uma amostra sistemática simples com intervalo de seleção igual a 5. Nesse caso, existem 5 amostras distintas, todas de tamanho $n=4$.

Amostra Sistemática Simples $(N=20, \,\, K=5)$.

Pode-se utilizar o R para solucionar o problema.


```r
# Tamanho da População
N=20
# Intervalo de seleção
K=5
# Cálculo do valor de n
(n=trunc(N/K))
```

```
## [1] 4
```

```r
# Calculo do valor de c
(c=N-n*K)
```

```
## [1] 0
```

```r
# Geração da partida aleatória
(r=sample(1:K,1))
```

```
## [1] 5
```

```r
# Determinação das unidades da amostra
for(l in (1:n)) print(r+(l−1)*K)
```

```
## [1] 5
## [1] 10
## [1] 15
## [1] 20
```


**(#exm:exmsis3)** Especifique as amostras possíveis através de uma seleção sistemática supondo que a população seja de 19 unidades e que o tamanho desejado da amostra seja de 4 unidades. 

Amostra Sistemática $(N=19, \,\,n=4)$.

Então $19 = 4 \times 4 + 3$, resultando em $K=4$ e $c=3$.

As amostras possíveis são:

$s_1 = \{{ 1 ; 5 ; 9 ; 13 ; 17 }\}$ com $n_1=5$;

$s_2 = \{{ 2 ; 6 ; 10 ; 14 ; 18 }\}$ com $n_2=5$;

$s_3 = \{{ 3 ; 7 ; 11 ; 15 ; 19 }\}$ com $n_3=5$;

$s_4 = \{{ 4 ; 8 ; 12 ; 16 }\}$ com $n_4=4$.

Utilizando o R tem-se:


```r
# Tamanho da População
N=19
# Tamanho mínimo desejado da amostra
n=4
# Cálculo do K, intervalo de seleção
(K=trunc(N/n))
```

```
## [1] 4
```

```r
# Cálculo do c
(c=N-n*K)
```

```
## [1] 3
```

```r
# Matriz para guardar os índices das unidades das amostras
# Cada coluna será uma possível amostra
amostras_possiveis=matrix(,n+1,K)
# Determinação dos índices das unidades populacionais
# que vão compor cada amostra
for(r in (1:K)){
  for(l in (1:(n+1))) {
    i=(r+(l−1)*K)
    if (i <= N) amostras_possiveis[l,r]=i
  }
}
amostras_possiveis
```

```
##      [,1] [,2] [,3] [,4]
## [1,]    1    2    3    4
## [2,]    5    6    7    8
## [3,]    9   10   11   12
## [4,]   13   14   15   16
## [5,]   17   18   19   NA
```

```r
# Uma maneira mais direta, "completando a população" com
# missing values
amostras_possiveis=matrix(c(1:N,NA),n+1,K,byrow=T)
amostras_possiveis
```

```
##      [,1] [,2] [,3] [,4]
## [1,]    1    2    3    4
## [2,]    5    6    7    8
## [3,]    9   10   11   12
## [4,]   13   14   15   16
## [5,]   17   18   19   NA
```

**(#exm:exmsis4)** Calcule o tamanho efetivo da amostra resultante da seleção sistemática em uma população com 149 unidades, quando o tamanho desejado da amostra sistemática simples é de 60 unidades. 

Amostra Sistemática $N=149,\,\,n=60)$

Então $149 = 60 \times 2 + 29$, resultando $K=2$ com $n=74$ e $c=1$.

$s_1 = \{\textrm{números ímpares até 149, inclusive}\}$ com $n_1=75$;

$s_2 = \{\textrm{números pares até 148, inclusive }\}$ com $n_2=74$;

Logo verifica-se que o tamanho efetivo da amostra poderá ser 74 ou 75.

**(#exm:exmsis5)** A Tabela \@ref(tab:tabsis1) apresenta a composição de uma amostra sistemática de uma população com $N=36$ unidades com intervalo de seleção $K$ igual a 4. Nesse caso, o tamanho esperado da amostra é de $n=9$ unidades. A tabela ilustra o caso em que a partida aleatória selecionada é $r=4$. Para essa ilustração, imaginamos as unidades da população arranjadas em 6 linhas e 6 colunas, com o percurso na tabela sendo sequencial por linha, da esquerda para a direita, e depois por coluna, de cima para baixo. 

<table>
<caption>(#tab:tabsis1)Amostra Sistemática com $N=36,   K=4,   n=9,   r=4$</caption>
</table>
<center>
----------
 l/c   1   2   3   4   5   6 
----- --- --- --- --- --- ---
1                 X         

2         X               X

3                 X        

4         X               X

5                 X        

6         X               X

----------
</center>

As unidades atribuídas às celas da tabela marcadas com "X" correpondem às unidades selecionadas para a amostra.

**(#exm:exmsis6)** A Tabela \@ref(tab:tabsis2) apresenta a composição de uma amostra sistemática de uma população com $N=36$ unidades com intervalo de seleção $K$ igual a 3. Nesse caso, o tamanho esperado da amostra é de $n=12$ unidades. A tabela ilustra o caso em que a partida aleatória selecionada é $r=2$. O arranjo das unidades da população foi o mesmo usado no exemplo anterior. Novamente as unidades atribuídas às celas da tabela marcadas com "X" correpondem às unidades selecionadas para a amostra.
 
<table>
<caption>(#tab:tabsis2)Amostra Sistemática com $N=36,   K=3,   n=12,   r=2)$</caption>
</table>
<center>
----------
 l/c   1   2   3   4   5   6 
----- --- --- --- --- --- ---
1         X           X     

2         X           X    

3         X           X    

4         X           X    

5         X           X    

6         X           X    

----------
</center>


### Composição de amostras sistemáticas simples de intervalo $K$ 

As unidades componentes das possíveis amostras sistemáticas de intervalo $K$ podem ser esquematicamente representadas como nas colunas da Tabela \@ref(tab:tabsis3) a seguir.  

<center>
<table>
<caption>(#tab:tabsis3)Unidades que compõe as possíveis $K$ amostras sistemáticas com partida aleatória no intervalo $[1,   2,   ...,   K]$</caption>
</table>
----------
                                 Amostras   possíveis                           
--------------- -------------- ----------- -------------- --------- ---------
**1**             **2**        **...**     **c**          **...**   **K**

$1$             $2$            $...$       $c$            $...$     $K$

${K+1}$         ${K+2}$        $...$       ${K+c}$        $...$     ${2K}$

$\vdots$        $\vdots$       $\vdots$    $\vdots$       $\vdots$  $\vdots$

${(n-1)K+1}$    ${(n-1)K+2}$   $...$       ${(n-1)K+c}$   $...$     ${nK}$

${nK+1}$        ${nK+2}$       $...$       ${nK+c}$       $-$       $-$

----------
</center>

### Uma mudança de notação útil

Há uma outra forma, mostrada na Tabela \@ref(tab:tabsis4), de visualizar a composição de possíveis amostras sistemáticas de intervalo $K$ indicadas nas colunas dessa tabela, definindo como identificadores das unidades os pares ${r,i}$, sendo $r$ o número da possível amostra $(r=1,\dots, K)$ e $i$ um índice sequencial para numerar as posições das unidades da respectiva amostra $(i=1,\dots,n_r)$ ou seja, $$i=\left\{\begin{array}{ll} 1, \dots, n+1 & \textrm{se}\,\,\,\,r \le c \\ 1, \dots, n & \textrm{se }\,\,\,\,r>c\end{array}\right.\,\,\,$$ 

<center>
<table>
<caption>(#tab:tabsis4)Notação alternativa das unidades que compõe as possíveis $K$ amostras sistemáticas com partida aleatória no intervalo $[1,   2,   ...,   K]$</caption>
</table>
----------
                               Amostras possíveis                     
------------- -------------- ----------- -------------- --------- ---------
$s_1$         $s_2$           $...$      $s_c$          $...$     $s_K$
                     
${11}$      ${21}$       $...$       ${c1}$       $...$     ${K1}$
 
${12}$      ${22}$       $...$       ${c2}$       $...$     ${K2}$

$\vdots$    $\vdots$     $\vdots$    $\vdots$     $\vdots$  $\vdots$

${1n}$      ${2n}$       $...$       ${cn}$       $...$     ${Kn}$
 
${1(n+1)}$  ${2(n+1)}$   $...$       ${c(n+1)}$   $-$       $-$

----------
</center>

## Alguns aspectos importantes na amostragem sistemática simples

Seguem alguns aspectos a serem destacados na amostragem sistemática simples, bem como algumas das suas vantagens e desvantagens.

- Requer um cadastro da população tipo lista, mas este pode ser construído ao mesmo tempo em que amostra é selecionada.

- Precisa especificar: o intervalo de seleção ou de amostragem, $K$, e em seguida sortear o ponto de partida, $r$, escolhido aleatoriamente.

- As unidades são selecionadas uma de cada vez, porém são definidas no momento da escolha da partida aleatória $r$, como mostra a Equação \@ref(eq:eqsis1).

**Vantagens da AS**

- Mais fácil de selecionar que AAS.

- Espalha a amostra mais uniformemente sobre a população.

- Fácil de estimar as características da população (exceto variância).

**Desvantagens da AS**

- Custo mais elevado para coletar dados (devido à amostra mais espalhada).

- Periodicidade no cadastro pode resultar em estimativas deficientes, a menos que as unidades sejam reordenadas.

- Complicações para estimar variâncias e precisão.

## Probabilidades de inclusão na amostragem sistemática

É fácil notar que a probabilidade de inclusão na amostra de uma unidade $i$ qualquer é dada por: 
$$
\pi_i=\frac1K,\,\,i=1,\,\dots,\,\,N
$$
Foi visto na Equação \@ref(eq:eqsis1) que a primeira unidade a ser incluída na amostra é a unidade $r$, que é um inteiro selecionado com equiprobabilidade no intervalo $[1,\: K]$. Como há $K$ números inteiros nesse intervalo, segue-se que a probabilidade de sortear um qualquer é $1/K$. 

As demais unidades selecionadas são obtidas somando a $r$ os múltiplos $l K$, com $l$ variando de $1$ a $n$, enquanto $lK+r \le nK+c$,  varrendo assim os intervalos de seleção subsequentes. Desta forma, ao selecionar $r$ todas as unidades amostrais ficam definidas, implicando que a probabilidade de selecionar uma unidade qualquer da população é igual à de selecionar a partida aleatória.

A probabilidade de inclusão das unidades $i \ne j$ na amostra é dada por:
$$\pi_{ij}=\left\{\begin{array}{ll} 1/K & \,\,i \ne j \,\in s_r,\,\,\,r=1,\,\dots,\,K,\\\ 0 &\,\, \textrm{caso contrário}.\end{array}\right.\,\,\,$$ 
 
Donde se conclui que unidades em amostras diferentes nunca podem aparecer juntas na mesma amostra!

Uma consequência deste fato é a dificuldade para estimar sem viés as variâncias de estimadores sob AS. 

XXX Até aqui XXX

## Variáveis aleatórias indicadoras - propriedades

Note que ao escolher $r,\, 1\le r\le K$, selecionamos a amostra inteira.

Sejam as variáveis indicadoras 
$$
 I(r)=\left\{\begin{array}{ll} 1 &\textrm{se a amostra é}\,s_r\,,\ \textrm {para}\,1\le r\le K.\\ 0 & \textrm{caso contrário}.\end{array}\right.\,\,\,
 $$ 

Então o valor esperada de $I(r)$ é:

$$
E_{AS}[I(r)]=1/K\,,\,\,r=1,\,\dots,\,K
$$
Sua variância pode ser calculada como:

$$
V_{AS}[I(r)]=E_{AS}\{[I(r)]^2\}-\{E_{AS}[I(r)]\}^2=\displaystyle\frac1{K}-\frac1{K^2}=\frac{1}{K}\left(1-\frac{1}{K}\right)
$$
E a covariância entre $I(r)$ e $I(q)$ é:

$$
COV_{AS}[I(r),I(q)]=E_{AS}[I(r)I(q)]-E_{AS}[I(r)]E_{AS}[I(r)]=\displaystyle 0-\frac{1}{K^2}=-\frac{1}{K^2}
$$

já que apenas uma amostra pode ser selecionada de cada vez. 


## Estimação sob amostragem sistemática

A partir de uma amostra selecionada através de uma AS pode-se definir estimadores dos parâmetros alvo descritos a seguir:

O total populacional da variável $y$:

$$
Y=\displaystyle\sum_{i \in U} y_i(\#eq:eqsis2)
$$ 
 
A média populacional da variável $y$: 

$$
\overline Y=\frac{Y}{N}=\frac1N {\displaystyle\sum_{i \in U} y_i}(\#eq:eqsis3)
$$ 

E a variância populacional da variável $y$:

$$
S_y^2= \frac{1}{N-1}\displaystyle\sum_{i \in U}(y_i-\overline Y)^2(\#eq:eqsis4)
$$ 

Para definir os estimadores para os parâmetros especificados acima, defini-se $t_r$, o total dos valores observados da variável $y$ para a amostra $s_r$, $r=1,\,\dots,\,K$, como:
$$
t_r=\displaystyle \sum_{i=1}^{n_r}y_{ri}
$$
onde $n_r$ é o tamanho efetivo da amostra $s_r$ selecionada.

Note que $\overline y_r=t_r/n_r= \overline y$ é a média dos valores de $y$ observados na amostra $s_r$.

### Estimação do total populacional sob amostragem sistemática
 
 O total populacional pode ser escrito como a soma dos totais de todas as $K$ possíveis amostras sistemáticas: 
 $$
 Y=\displaystyle \sum_{r=1}^{K}t_r
 $$    

Um estimador do total populacional, $Y$, pode, então, ser escrito como:

$$
\widehat{Y}_{AS}=\sum_{i \in s_r}\frac {y_{ri}}{\pi_{ri}}=\sum_{i \in s_r}Ky_{ri}=Kt_r=K \displaystyle \sum_{r=1}^{K}I(r)t_r(\#eq:eqsis5)
$$ 

Tem-se, então:

$$
E_{AS}(\widehat{Y}_{AS})=K \displaystyle \sum_{r=1}^{K}E_{AS} \left [I(r) \right ]t_r= K \sum_{r=1}^{K}\frac{1}{K}t_r= \sum_{r=1}^{K}t_r = Y
$$

Portanto $\widehat{Y}_{AS}$ é estimador não viciado para o total populacional $Y$.

Quando o tamanho populacional $N$ é desconhecido, pode ser estimado usando um estimador similar ao estimador $\widehat{Y}_{AS}$:

$$
\widehat{N}_{AS}=Kn_r=K \displaystyle \sum_{r=1}^{K}I(r)n_r
$$

$\widehat{N}_{AS}$ é um estimador não viciado para $N$, pois: 

$$
E_{AS}(\widehat{N}_{AS})=K \displaystyle \sum_{r=1}^{K}E_{AS} \left [I(r)\right]n_r= K \sum_{r=1}^{K} \frac{1}{K} n_r = \sum_{r=1}^{K}n_r=N
$$.

**(#exm:exmsis7)** Seja uma população composta de $N=19$ unidades da qual se deseja retirar uma amostra sistemática com intervalo de seleção $K=4$ para estimar o total de uma dada variável $y$. Mostre numericamente que o estimador $\widehat Y_{AS}$ é não viciado.

<center>
<table>
<caption>(#tab:tabsis5)Amostras sistemáticas possíveis para a população de $N=19$ com intervalo de seleção $K=4$</caption>
</table>
----------
 s1   s2	 s3   s4
---- ---- ---- ---- 
99   54	  96   54

85   88	  55   83

62   85	  96   55

91   92	  67   68

54   79	  76    

----------
</center>

Para mostrar que o estimador é não viciado, basta verificar que sua média ou valor esperado é igual ao parâmetro populacional a ser estimado. No caso basta calcular as estimativas para cada uma das possíveis amostras (cada coluna da Tabela \@ref(tab:tabsis5)), calcular o valor médio das estimativas e comparar com o total populacional que é a soma de todas as células da tabela.

Pode-se utilizar o R.


```r
# Intervalo de seleção
K=4
# Carregando os valores populacionais da variável y
pop=matrix(c(99,54,96,54,85,88,55,83,62,85,96,55,91,92,67,68,54,79,76,NA),5,K,byrow=T)
# Calculando a estimativa do total para cada uma das AS possíveis
Yhatr=NULL
for(i in (1:K)) Yhatr[i] = K*sum(pop[,i],na.rm=T)
Yhatr
```

```
## [1] 1564 1592 1560 1040
```

```r
# Calculando a média das estimativas
EYhat=mean(Yhatr)
EYhat
```

```
## [1] 1439
```

```r
# Calculando o total populacional Y
Y=sum(pop,na.rm=T)
Y
```

```
## [1] 1439
```

### Estimação da média populacional sob amostragem sistemática

A média populacional $\overline Y=Y/N$ pode ser vista como uma razão entre o total da variável $y$ e o total de unidades populacionais:
$$
\overline Y=\frac YN=\displaystyle\frac  {\sum_{r=1}^{K}t_r}{\sum_{r=1}^{K}n_r}
$$
Para estimá-la deve-se considerar duas situações: quando o tamanho da população, $N$, é conhecido ou quando esse valor é desconhecido.

Um estimador não viciado para a média quando $N$ é conhecido é dado por: 

$$
\overline y_{AS}= \frac {\widehat Y_{AS}}N= \frac {1}{N} K t_r (\#eq:eqsis6)
$$ 
Este estimador é não viciado para $\overline Y$, pois foi visto que $Y_{AS}$ é não viciado para o total populacional. Também é interessante observar que este estimador não é igual a média amostral, a menos no caso em que $N=nK$.

**(#exm:exmsis8)** Considerando a mesma população do Exemplo \@ref(exm:exmsis7) pode-se verificar que $\overline y_{AS}$ é não viciado.

Neste caso deve-se calcular a estimativa da média para cada coluna (AS possível) da Tabela \@ref(tab:tabsis5), calcular o valor médio das estimativas e comparar com média populacional.

Pode-se utilizar o R.


```r
# Intervalo de seleção e tamanho da população conhecido
K=4
N=19
# Carregando os valores populacionais da variável y
(pop=matrix(c(99,54,96,54,85,88,55,83,62,85,96,55,91,92,67,68,54,79,76,NA),5,K,byrow=T))
```

```
##      [,1] [,2] [,3] [,4]
## [1,]   99   54   96   54
## [2,]   85   88   55   83
## [3,]   62   85   96   55
## [4,]   91   92   67   68
## [5,]   54   79   76   NA
```

```r
# Calculando a estimativa da média para cada uma das AS possíveis
ybarAS.r=NULL
for(i in (1:K)) ybarAS.r[i] = K/N*sum(pop[,i],na.rm=T)
ybarAS.r
```

```
## [1] 82.31579 83.78947 82.10526 54.73684
```

```r
# Calculando a média das estimativas
EybarAS=mean(ybarAS.r)
EybarAS
```

```
## [1] 75.73684
```

```r
# Calculando o total populacional Y
Ybar=mean(pop,na.rm=T)
Ybar
```

```
## [1] 75.73684
```
**(#exm:exmsis9)** Pode-se, utilizando a mesma população e o R, verificar que o estimador $\overline y_{AS}$, para média populacional de $y$, utilizando AS, não é igual à média amostral, $\overline y$.


```r
# Intervalo de seleção e tamanho da população conhecido
K=4
N=19
# Carregando os valores populacionais da variável y
pop=matrix(c(99,54,96,54,85,88,55,83,62,85,96,55,91,92,67,68,54,79,76,NA),5,K,byrow=T)
# Calculando a estimativa da média para cada uma das AS possíveis
ybarAS.r=NULL
for(i in (1:K)) ybarAS.r[i] = K/N*sum(pop[,i],na.rm=T)
ybarAS.r
```

```
## [1] 82.31579 83.78947 82.10526 54.73684
```

```r
# Calculando a média amostral para cada uma das AS possíveis
ybar.r=NULL
for(i in (1:K)) ybar.r[i] = mean(pop[,i],na.rm=T)
ybar.r
```

```
## [1] 78.2 79.6 78.0 65.0
```

Quando $N$ é desconhecido, um estimador alternativo para a média é dado pela razão entre os estimadores do total e do tamanho populacionais: 

$$
\overline y_{AS}=\frac {\widehat Y_{AS}}{\widehat N_{AS}}=\frac {Kt_r}{Kn_r}=\frac {t_r}{n_r}=\overline y_r=\overline y(\#eq:eqsis7)
$$ 
que é a média amostral.

Este estimador, sendo um estimador de razão, é viciado para estimar a média populacional, exceto quando $N=nK$, pois:

\begin{eqnarray}E_{AS}(\overline{y}_{AS}) & = & E_{AS}(\overline y)= E_{AS} \left [\sum_{r=1}^{K}I(r)\overline y_r \right] \\ &=& \frac{1}{K} \sum_{r=1}^{K}\overline y_r = \frac{1}{K} \sum_{r=1}^{K}\frac {t_r}{n_r} \\& \neq & \frac {\sum_{r=1}^{K}t_r}{\sum_{r=1}^{K}n_r} = \overline YX,\end{eqnarray}

exceto quando $N=nK$.

O estimador viciado é o preço pago por não se conhecer o tamanho, $N$, da população!

### Estimação de uma proporção na amostragem Sistemática

Como já foi visto no Capítulo \@ref(cap:proporc), muitas vezes o interesse é estimar a proporção de unidades da população que possui uma determinada característica de interesse. Nesse caso ao selecionar uma amostra sistemática nas unidades onde a característica de interesse estiver presente a variável $y$ tera o valor $1$ e nas demais unidades $y$ recebera o valor $0$.

Como já foi visto que a proporção equivale à média de uma variável do tipo indicadora, quando o tamanho total da população, $N$, for conhecido um estimador não viciado para a proporção será dado por:

$$
\widehat p_{AS}=\frac KN \sum_{i=1}^{n_r} y_i=\frac KN t_r=\frac KN n_a (\#eq:eqsis8)
$$
onde $n_a$ denota o número de unidades que tem a caracteristica de interesse na amostra.

**(#exm:exmsis10)** Utilizando o R pode-se ver núméricamente que o estimador para a proporção é não viciado quando $N$ é conhecido.


```r
# Intervalo de seleção e tamanho da população conhecido
K=4
N=19
# Carregando os valores populacionais da variável y
(pop=matrix(c(0,1,0,1,1,1,0,0,0,0,1,0,0,0,1,1,1,0,1,NA),5,K,byrow=T))
```

```
##      [,1] [,2] [,3] [,4]
## [1,]    0    1    0    1
## [2,]    1    1    0    0
## [3,]    0    0    1    0
## [4,]    0    0    1    1
## [5,]    1    0    1   NA
```

```r
# Calculando a estimativa da proporção para cada uma das AS possíveis
p_AS=NULL
for(i in (1:K)) p_AS[i] = K/N*sum(pop[,i],na.rm=T)
p_AS
```

```
## [1] 0.4210526 0.4210526 0.6315789 0.4210526
```

```r
# Calculando a média das estimativas
(Ep_AS=mean(p_AS))
```

```
## [1] 0.4736842
```

```r
# Calculando proporção populacional p
(p=mean(pop,na.rm=TRUE))
```

```
## [1] 0.4736842
```

No caso em que o tamanho, $N$ da população é desconhecido pode-se utilizar o estimador de razão que, neste caso será igual à proporção amostral:
$$
\widehat p_{AS}=\frac {n_a}{n_r},
$$
sendo um estimador viciado, a menos do caso onde $N=nK$, como já foi visto.



## Variância dos estimadores sob amostragem sistemática

A variância de $\widehat Y_{AS}$ sob amostragem sistemática é dada por: 

\begin{eqnarray}
V_{AS}(\widehat{Y}_{AS})&=&V_{AS}\left[K\sum_{r=1}^{K}I(r)t_r\right]\\&=&K^2\left[{\sum_{r=1}^{K}{t_r}^2 V_{AS}[I(r)]}+\sum_{r\neq K}COV_{AS}[I(r),I(q)]t_rt_q\right]\\&=& K^2\left[\sum_{r=1}^{K}{t_r}^2\frac{1}{K}\left(1-\frac{1}{K}\right)+\sum_{r\neq K}t_rt_q\left(-\frac{1}{K^2}\right)\right]\\&=& K^2\left[\frac{1}{K}\sum_{r=1}^{K}{t_r}^2 - \frac{1}{K^2}\left(\sum_{r=1}^{K}{t_r}^2+\sum_{r\neq K}t_rt_q\right)\right]\\&=&K\left[\sum_{r=1}^{K}{t_r}^2 - \left(\sum_{r=1}^{K}{t_r}\right)^2/K\right]\\&=&K\sum_{r=1}^{K}(t_r-\overline t)^2 (\#eq:eqsis9)
\end{eqnarray}

onde: $\overline t= \displaystyle\frac 1K\sum_{r=1}^{K} t_r = \frac YK$

Portanto a variância é calculada a partir da soma de quadrados dos desvios entre totais das amostras possíveis em relacão à média destes totais.

Quando $N$ é conhecido a variância do estimador da média populacional é dada por:

$$
V_{AS}(\overline y_{AS})= \frac1{N^2} V_{AS}(\widehat Y_{AS})
$$

Um problema que ocorre com a amostragem sistemática é o fato da ordenação da população em relação aos valores da variável, $y$, de interesse afetar a variância (precisão) dos estimadores.

Para demonstrar esse problema pode-se utilizar a população apresentada nos exemplos acima, alterando a ordem de suas unidades o que afeta a composição das possíveis amostras sistemáticas.

Em primeiro lugar, considere a população como foi apresentada e calcule a varância dos estimadores do total. Em seguida ordene a população em ordem crescente (ou decrescente) dos valores de $y$ e repita o cálculo. Observe que com a população ordenada a variância do estimador do total diminui consideravelmente. 


```r
# Intervalo de seleção e tamanho da população conhecido
K=4
N=19
# População na ordem natural
# Carregando os valores populacionais da variável y
pop=matrix(c(99,54,96,54,85,88,55,83,62,85,96,55,91,92,67,68,54,79,76,NA),5,K,byrow=T)
pop
```

```
##      [,1] [,2] [,3] [,4]
## [1,]   99   54   96   54
## [2,]   85   88   55   83
## [3,]   62   85   96   55
## [4,]   91   92   67   68
## [5,]   54   79   76   NA
```

```r
# Calculando a estimativa do total para cada uma das AS possíveis
tr=NULL
for(i in (1:K)) tr[i] = sum(pop[,i],na.rm=T)
# Calculando a variância do estimador do total
VASYhat=K*(var(tr)*(K-1))
VASYhat
```

```
## [1] 53219
```

```r
# Ordenando a população em ordem crescente de y
# Carregando os valores populacionais da variável y
pop=matrix(c(54,54,54,55,55,62,67,68,76,79,83,85,85,88,91,92,96,96,99,NA),5,K,byrow=T)
pop
```

```
##      [,1] [,2] [,3] [,4]
## [1,]   54   54   54   55
## [2,]   55   62   67   68
## [3,]   76   79   83   85
## [4,]   85   88   91   92
## [5,]   96   96   99   NA
```

```r
# Calculando a estimativa do total para cada uma das AS possíveis
tr=NULL
for(i in (1:K)) tr[i] = sum(pop[,i],na.rm=T)
# Calculando a variância do estimador do total
VASYhat=K*(var(tr)*(K-1))
VASYhat
```

```
## [1] 20611
```
Fica como exercício para o leitor verificar que o mesmo não ocorre quando se utiliza uma AAS ou AASC, pois nestes casos a ordenação não tem influência na precisão das estimativas.

**Notas**

1. Como $r$ pode tomar apenas um valor, $V_{AS}(\widehat Y_{AS})$ não pode ser diretamente estimada a partir da amostra. Isto ocorre porque $\pi_{ij} = 0$ para quaisquer duas unidades em amostras distintas.

2. Em @Cochran1977 é apresentada uma boa discussão sobre como a ordenação dos valores da variável de pesquisa para unidades populacionais pode afetar a eficiência de amostras sistemáticas.

3. Para populações em “ordem aleatória”, a performance da amostragem sistemática é semelhante a da amostragem aleatória simples sem reposição (@Cochran1977, seção 8.5). 

4. Para populações com tendência linear, amostragem sistemática é melhor que AAS (@Cochran1977, seção 8.6).

5. Amostragem sistemática é como uma forma de *amostragem estratificada*, com sorteio de apenas uma unidade por estrato (@Cochran1977, p. 215).

6. Para populações periódicas, amostragem sistemática em sincronia com o período é um desastre (@Cochran1977, p. 218).

**Considere o caso especial onde $N = n \times K$**

Da tabela 8.2 do @Cochran1977 é fácil ver que $\overline y_r= t_r/n_r$ é um estimador não viciado para $\overline Y$. Como

$$
\displaystyle\sum_{r=1}^{K}\sum_{i=1}^{n}(y_{ri}-\overline Y)^2=n\sum_{r=1}^{K}(\overline y_r - \overline Y)^2+\sum_{r=1}^{K}\sum_{i=1}^{n}(y_{ri}-\overline y_r)^2
$$

tem-se que 
$$
(N-1)S_y^2=nKV_{AS}(\overline y)+K(n-1)S_D^2
$$

onde $S_y^2$ é a variância populacional “total”, $S_D^2$ é a variância *dentro* das amostras sistemáticas e

$V_{AS}(\overline y)$ é a variância de $\overline y$ sob amostragem sistemática.

Portanto, conforme @Cochran1977, p. 208, o estimador de média é mais eficiente sob amostragem sistemática que sob AAS se e somente se $S_D^2>S_y^2$ .

**Uma expressão alternativa para $V_{AS}(\overline y)$ quando $N = nK$**

De acordo com o Teorema 8.2 de @Cochran1977, p. 209, tem-se:

$$
V_{AS}(\overline y)=\frac{S_y^2}{n}\left(\frac{N-1}{N}\right)[1+(n-1)\rho\,](\#eq:eqsis10)
$$ 

onde:

$$
\rho=\frac{1}{(n-1)(N-1)S_y^2} \displaystyle \sum_{r=1}^{K} \sum_{i \neq j}^{n}(y_{ri}-\overline Y)(y_{rj}-\overline Y) (\#eq:eqsis11)
$$

é a correlação intraclasse dentro das amostras possíveis.

Este resultado mostra que a correlação positiva entre unidades de uma mesma amostra aumenta a variância da média amostral com seleção sistemática quando comparada com a variãncia da média amostral com seleção AAS.

Notando que sob AAS, $V_{AAS}(\overline y)=\displaystyle\left(1-\frac{n}{N}\right)\frac{S_y^2}{n}$.

Então, tem-se a relação aproximada:

$$
\frac{V_{AS}(\overline y)}{V_{AAS}(\overline y)}=1+(n-1)\rho\,\left\{\begin{array}{lll} < 1&\textrm{se} \,\,\,\rho<0\,, \\ = 1 & \textrm{se} \,\,\,\rho=0\,,\\ > 1 & \textrm{se} \,\,\,\rho>0\,.\end{array}\right.(\#eq:eqsis12)
$$ 

Cabe notar que razões do tipo $V_{AS}(\overline y)/V_{AAS}(\overline y)$ são chamadas de *Efeito do Plano Amostral (EPA)*. Em inglês, usa-se o termo *design effect*, abreviado como *deff*.

## Estimação de variâncias dos estimadores na amostragem sistemática

Na amostragem sistemática não há um estimador não viciado para a variância dos estimadores do total e da média.

O que se faz é utilizar estimadores mais adequados de acordo com a ordenação da população.

No caso de se poder supor que não há uma ordenação ou que a população esteja espalhada aleatoriamente no cadastro de seleção em relação à variavel (variáveis) de interesse, de modo que as médias dentro de cada intervalo de seleção sejam, pelo menos aproximadamente, iguais ($\overline Y_r = constante$), o que se pode fazer é utilizar um estimador para a variância da média equivalente ao usado quando se tem uma AAS, dado pela fórmula:

$$
 \widehat V_{1AS}(\overline y_{AS})=\frac {N-n}{Nn}\frac 1{n-1}\sum_{i=i}^{n_r} (y_i-\overline y_{AS})^2 (\#eq:eqsis13)
$$
Esses estimadores são para o caso de $N$ conhecido e serão não viciados caso a suposição de ordenação aleatória das unidades na população esteja correta. No caso de não se conhecer $N$ pode-se utilizar as alternativas dadas pelos estimadores de razão.

No caso em que a população esteja ordenada segundo uma "estratificação" de modo que as médias em cada intervalo de seleção variem (p.ex.: a população é ordenada segundo os valores de $y$), pode-se utilizar, para estimar a variancia do estimador da média, a fórmula:

$$
 \widehat V_{2AS}(\overline y_{AS})=\frac {N-n}{Nn}\frac 1{2(n-1)}\sum_{i=i}^{n_r}(y_i-y_{i+K})^2 (\#eq:eqsis14)
$$

Alternativamente e independente da ordenação da população, pode-se usar um estimador do tipo replicação, onde são selecionadas $q$ amostras sistemáticas de tamanhos $n/q$ cada uma, tomando a variância das estimativas dadas por cada uma das amostras. Essa técnica, também chamada *amostra sistemática repetida*, está descrita em @scheaffer2011.

Quando a seleção de uma AS for realizada a partir de um cadastro conhecido, é sempre possível reordenar as unidades aleatóriamente antes proceder a seleção. Esse é um artifício muito útil e que permite que se utilize os estimadores equivalentes aos da AAS para estimar a variância dos estimadores.

Pode-se encontrar boas discussões sobre a estimação da variância na amostragem sistemática em, por exemplo, @Cochran1977 ou @Thompson2012.

A Tabela \@ref(tab:tabsis6) apresenta um resumo sobre a estimação de alguns parâmetros na AS.

<center>
<table>
<caption>(#tab:tabsis6)Principais resultados para os estimadores sob *AS*</caption>
</table>

----------
Parâmetro                                                                             Estimador sob AS  
------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------
$\displaystyle Y=\sum_{i \in U} y_i$                                                  $\widehat{Y}_{AS}=Kt_r=K \displaystyle \sum_{r=1}^{K}I(r)t_r$

$N$                                                                                   $\displaystyle \widehat N_{AS}=Kn_r,\,\, \text{ se  } N \text{ é desconhecido }$

$\displaystyle \overline Y=Y/N$                                                       $\displaystyle \overline {y}_{AS}=\frac KNt_r,\,\,\text{ se } N \text{ é conhecido }\\ \displaystyle  \overline{y}_{AS}= \frac {t_r}{n_r}=\overline y,\,\,\text{ se }N \text{ é desconhecido }$

$\displaystyle p = N_A/N$                                                             $\displaystyle \widehat {p}_{AS}=\frac KNn_a,\,\, \text{ se }  N \text{ é conhecido }\\  \displaystyle \widehat {p}_{AS}= \frac {n_a} {n_r},\,\,\text{ se }N \text{ é desconhecido }$                                                                                        
                                                                                                                                                                                                              
$\displaystyle V_{AS}(\widehat Y_{AS})=K\sum_{r=1}^K(t_r-\overline t)^2$              $\text{Depende da ordenação das unidades na população amostrada}$

$\displaystyle V_{AS}(\overline y_{AS})=\frac K{N^2}\sum_{r=1}^K(t_r-\overline t)^2$  $\text{Depende da ordenação das unidades na população amostrada}$
                                                                                                                                                                                                              
----------
</center>
 

## Alternativas de seleção em amostragem sistemática

Como foi visto, existem dificuldades quando o tamanho da população, $N$, não é um múltiplo do intervalo de seleção $K$, ou seja, quando $N \ne nK$. Neste caso os estimadores de total e da média têm um vício.

Em @Cochran1977 é dito que esse vício pode ser considerado desprezível quando se trabalha com tamanhos de amostra razoavelmente grandes, podendo-se considerar como tal amostras a partir de $n=50$.

Há também alternativas que podem ser utilizadas quando a seleção da amostra sistemática for feita a partir de um cadastro ou lista das unidades populacionais. Uma possibilidade é "completar" a população sorteando aleatóriamente unidades da população e adicioná-las à população original até o número mais próximo de N tal que o novo tamanho da população seja $N' = nK$. Dessa maneira vai-se obter uma AS onde todas as amostras terão o mesmo tamanho e o problema do vício desaparece. Outra possíbilidade é eleiminar ao acaso unidades da população até obter um número $N'$ menor que $N$ tal que $N'=nK$. É aconselhável optar pelo caso em que se altere menos possível a população original. 

Por exemplo, no caso de uma população de $N=19$ unidades onde se deseja uma AS onde k=4, pode-se selecionar aleatoriamente uma das unidades da população e repetí-la. A nova população terá $N'=20$ unidades e pode-se utilizar uma AS com K=4 e n=5.

No caso de se desejar uma AS de uma população de $N=25$, pode´se eliminar aleatóriamente uma unidade da população, obtendo-se uma nova população de $N'=24$, donde todas as $4$ amostras sistemáticas possíveis com K=4 terão o tamanho $n=6$.

Também é sugerido por @Cochran1977 um método de seleção de uma amostra sistemática de forma circular proposta por Lahiri em 1952. Esse método consiste em:

  1)  Numerar as unidades da população de forma circular de maneira que após a última unidade esteja novamente a primeira;
  2)  Tomar como intervalo de seleção o inteiro mais próximo de $N/n$, ou $K=round(N/n)$;
  3)  Selecionar um inteiro $r \in[1,N]$;
  4)  Tomar como primeira unidade da amostra a unidade $U_r$ e as demais $r-ésimas$ unidades seguintes sobre o círculo até obter as $n$ unidades amostrais desejadas.
  
**(\#exm:exmsis11)**  Seja uma população de $N=21$ unidades da qual se deseja uma amostra sistemática de 5 unidades. 

O *script* em R a seguir seleciona uma amostra sistemática circular com o tamanho desejado e $K=4$
  

```r
N=21
n=5
# Passo 1: calculando o valor de K
(K=round(N/n))
```

```
## [1] 4
```

```r
# Selecionando a partida aleatória r
r=sample(1:N,1)
sr=NULL
# Definindo a primeira unidade amostral
sr[1]=r
# Definindo as demais unidades amostrais
for(i in (2:n)){
  sr[i]=sr[i-1]+K
  if(sr[i]>N) sr[i]=sr[i]-N
}
r
```

```
## [1] 20
```

```r
sr
```

```
## [1] 20  3  7 11 15
```

Veja que com a amostra sistemática circular o número de amostras possíveis é $N$ e pode-se definir estimadores não viciados para a média e o total da variável de interesse $y$, como:
$$
\overline y_{ASc}=\overline y=\frac 1n \sum_{i=1}^n y_i \,\,\,\text{ e }\,\,\,\widehat Y=N\overline y_{ASc}
$$

Neste método a seleção é feita com equiprobabilidade e sem reposição, como na AS tradicional, porém é necessário que $N$ seja conhecido e a seleção é um pouco mais trabalhosa. A vantagem é que os estimadores são sempre não viciados.

Fica para o leitor mostrar que os estimadores para a média e total são não viciados.

## Exercícios

**(#exr:exrsis1)**  Identifique as outras 4 amostras possíveis referidas no Exemplo \@ref(exm:exmsis1). 

**(#exr:exrsis2)**  A Tabela \@ref(tab:tabsis7) mostra a listagem dos moradores dos 13 domicílios de uma rua. As pessoas foram listadas de acordo com a seguinte regra: H=homem adulto, M=mulher adulta, h=homem criança e m=mulher criança. Cada coluna da tabela representa um dos domicílios da rua.

<center>
<table>
<caption>(#tab:tabsis7)Composição das familias dos domicílios da rua</caption>
</table>

----------
 Domicílios   1   2   3   4   5   6   7   8   9   10   11   12   13
------------ --- --- --- --- --- --- --- --- --- ---- ---- ---- ----
              H   H   H   H   H   H   H   H   H   H    H    H    H
           
              M   M   M   M   M   M   M   M   M   M    M    M    M 
            
              m   m   h       h   m   m   h   h   h    m    m      
           
              h   h   m       h   h   m   m       m    h           
           
              m   m           m       h                            
            
----------
</center>
  
  a) Calcule a variância do estimador da proporção de homens adultos usando AS de 1 em cada 5 pessoas;
  b) Calcule a variância do estimador da proporção de homens adultos usando AAS com fração amostral de 20%;
  c) Repita os itens $a$ e $b$ para a proporção de crianças;
  d) Em que casos a AS é mais indicada que a AAS? Por que?
  
  **Dica:** para selecionar a amostra sistemática numere as pessoas sequencialmente a partir do homem adulto do domicílio 1, descendo na coluna e passando para o topo da coluna seguinte.
  
**(#exr:exrsis3)**  Para estimar o número de erros de digitação num livro de 207 páginas, uma amostra sistemática foi retirada selecionando-se, em primeiro lugar, um número aleatório entre 1 e 10, incluindo na amostra todos as décimas páginas subsequentes. O número aleatório selecionado foi 9. Os números de erros nas páginas selecionadas foram, respectivamente, $1,\,\,1,\,\,3,\,\, 0,\,\,0,\,\,0,\,\,2,\,\,3,\,\,0,\,\,2,\,\,2,\,\,1,\,\,1,\,\,2,\,\,2,\,\,2,\,\,2,\,\,2,\,\,3$ e $3$.
  
  a)  Quais foram as páginas selecionadas?
  b)  De uma estimativa não viciada do total de erros do livro.
  c)  Uma pessoa usou os dados da amostra e calculou uma estimativa para o total de erros da seguinte maneira: calculou o número médio de erros por página da amostra e multiplicou por 207, resultando 331,20 erros. Esta é uma estimativa não viciada considerando o plano amostral utilizado? Por quê?
  d) A variância do estimador foi estimada por $207\times(207-20)\times1,09/20$, onde $\small1,09$ é a variância amostral dos 20 valores observados. Essa estimativa é não viciada? Por quê?

**(#exr:exrsis4)**  A Tabela \@ref(tab:tabsis8) mostra o número de sementes germinadas em cada canteiro de um viveiro de mudas com um total de 200 canteiros. Suponha que se deseja estimar a média de sementes por canteiro, através de uma amostra de tamanho 10. (**Dica:** As linhas, $i$, são as possíveis amostras sistemáticas e as colunas, $h$, representam uma estratificação dos canteiros)

<center>
<table>
<caption>(#tab:tabsis8)Número de sementes germinadas por canteiro</caption>
</table>

----------
i  \\  h    1   2   3   4   5   6   7   8   9  10  Totais
-------- --- --- --- --- --- --- --- --- --- --- -------
1        8   20  26  34  31  24  18  16  36  10      223

2        6   19  26  21  23  19  13  12  8   35      182 

3        6   25  10  27  41  28  7   8   29  7       188

4        23  11  41  25  18  18  9   10  33  9       197

5        25  31  30  32  15  29  11  12  14  12      211 

6        16  26  55  43  21  24  20  20  13  7       245

7        28  29  34  33  8   33  16  17  18  6       222

8        21  19  56  45  22  37  9   12  20  14      255 

9        22  17  39  23  11  32  14  7   13  12      190

10       18  28  41  27  3   26  15  17  24  15      214

11       26  16  27  37  4   36  20  21  29  18      234

12       28   9  20  14  5   20  21  26  18  4       165

13       11  22  25  14  11  43  15  16  16  4       177

14       16  26  39  24  9   27  14  18  20  9       202

15        7  17  24  18  25  20  13  11  6   8       149

16       22  39  25  17  16  21  9   19  15  8       191

17       44  21  18  14  13  18  25  27  4   9       193

18       26  14  44  38  22  19  17  29  8   10      227

19       31  40  55  36  18  24  7   31  8   5       255

20       26  30  39  29  9   30  30  29  10  3       235

Totais   410 459 674 551 325 528 303 358 342 205    4155

----------
</center>

  a) Calcule a variância do estimador da média se for utilizada uma amostra sistemática;
  b) Calcule a variância do estimador da média usando uma AAS de mesmo tamanho;
  c) Calcule a variância do estimador da média usando uma AE onde cada estrato terá 20 unidades e a amostra alocada proporcionalmente;
  d) Comente os resultados.
  
**(#exr:exrsis5)**  A administração do Parque da Tijuca precisou estimar o número médio de ocupantes nos carros que visitaram o parque num determinado dia. Para isso foi feita uma amostra, usando a seguinte estratégia: 
  
  - Na hora da abertura da cabine de cobrança foi selecionado um número aleatório entre 1 e 10;
  
  - A partir do veículo com esse número, por ordem de chegada, foram contados os ocupantes de todos os décimos veículos.
    
    No final do dia passaram pela cancela 105 veículos e os selecionados para a amostra tinham, por ordem de passagem, 3, 5, 7, 2, 3, 4, 5, 4, 4, e 2, ocupantes (incluindo o motorista).

  a) Defina qual o tipo de plano amostral utilizado e dê os seus parâmetros;
  b) Liste os números de ordem dos veículos pesquisados, sabendo que o número aleatório selecionado foi 8;
  c) Estime a média de ocupantes por veículo no dia da pesquisa;
  d) Supondo que a distribuição do número de ocupantes é aleatória, estime um intervalo de 95% de confiança para a média de ocupantes por veículo.
  
**(#exr:exrsis6)**  O departamento de controle de qualidade de uma indústria alimentícia utiliza amostragem sistemática para estimar a média da quantidade de determinado alimento colocada em cada lata na linha de produção. A Tabela \@ref(tab:tabsis9) relaciona a amostra selecionada de 1 em cada 50 latas num dia, quando a produção diária foi de 1820 latas.

<center>
<table><caption>(#tab:tabsis9)Quantidade de alimento, em onças, por lata na AS.</caption></table>

----- ----- ----- ----- ----- -----
12,00 11,97 12,01 12,03 12,01 11,80 

11,91 11,98 12,03 11,98 12,00 11,83

11,87 12,01 11,98 11,87 11,90 11,88 

11,75 11,93 11,95 11,97 11,93 12,05 

11,85 11,98 11,87 12,05 12,02 12,04

12,05 11,87 11,91 11,93 11,94 11,89

----------
</center>

  a)  Estime a média da quantidade de alimento por lata;
  b)  Estime a variância da estimativa da média e de um intervalo de $95\%$ de confiança para a média;
  c)  Quais as suposições feitas para escolher o estimador de variância utilizado?

**(#exr:exrsis7)**  Seja a população da tabela abaixo:

<center>
<table>
<caption>(#tab:tabsis10)Valores da variável $y$ para a população</caption>
</table>
----------
 i     I   II   III   IV   V
----- --- ---- ----- ---- --- 
1     30  63   29    76   54

2     95  24   24    76   55

3     53  39   62    53   73

4     63  38   25    52   37

5     58  79   99    55   96

6     29  36   84    52   79

Total 328 279  323   364  394
----------
</center>

Caso não fossem conhecidos os valores da variável representada na tabela, qual seria a melhor alternativa para estimar o total populacional:

  a)  Uma amostra sistemática com $k=5$?
  b)  Uma AAS de tamanho $n=6$?
  c)  Uma amostra de Bernoulli com $p=0,2$?
  
Em cada caso calcule a variância do estimador do total populacional para sustentar sua resposta.

**(#exr:exrsis8)**  Numa determinada região há 3 comunidades consistindo, respectivamente, de pessoas de descendência Anglo-saxã, Polonesa e Italiana. Está disponível um cadastro atualizado, no qual as pessoas de cada domicílio estão listadas na seguinte ordem: esposo, esposa, filhos por idade e outros residentes.Os domicílios estão listados em ordem em cada rua.  O número médio de pessoas por domicílio é 5. Você pode escolher entre uma amostra sistemática com K=5 ou uma AAS com fração amostral de 20%. Para quais das seguintes variáveis você espera, e qual a razão, que a amostragem sistemática seja mais precisa?

  a)  Proporção de pessoas descendentes de Poloneses;
  b)  Proporção de homens;
  c)  Proporção de filhos.
  
**(#exr:exrsis9)**  Um censo foi realizado numa comunidade. A cada 20 domicílios, a partir da seleção aleatória de uma partida entre 1 e 20, foi perguntado o número de anos que a família residia naquele imóvel. Os resultados sumarizados da amostra são dados a seguir:
		              
$$
n=115;\:\:N=2300;\:\:\sum_{i=1}^ny_i=407,1\:\:\text{e}\:\:\sum_{i=1}^ny_i^2=2011,15
$$
  a)  Descreva o plano amostral utilizado e seus parâmetros;
  b)  Estime o número médio de anos de moradia das famílias nos domicílios;
  c)  Estime a variância do estimador da média, citando a suposição feita sobre a distribuição da variável de interesse na população.
  
**(#exr:exrsis10)**  Os dirigentes de uma associação profissional querem estimar a proporção de membros que são a favor de algumas propostas de alterações no estatuto da entidade. Uma AS foi feita a partir da lista dos associados, selecionando uma partida aleatória entre 1 e 10 e tomando todos os décimos associados da lista, a partir do número sorteado. Foram selecionados 65 sócios no total de 654 existentes. Os sócios da amostra favoráveis às mudanças foran assinalados com $y_i=1$ e os contrátrios com $y_i=0$. Ao final da pesquisa obteve-se $\sum_{i=1}^{65}y_i=48$.

  a)  Estime a proporção, $p$, de sócios favorávies às mudanças;
  b)  Estime a margem de erro, com $95\%$ de confiança, para a estimativa de $p$.
