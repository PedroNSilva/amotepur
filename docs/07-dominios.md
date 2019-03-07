# Estimação para Domínios de Estudo 

## Domínios de Estudo 

Em inúmeras pesquisas são produzidas e divulgadas estimativas para um certo conjunto de categorias nas quais a população está dividida. 

*Domínios* de estudo, *subpopulações* ou *“pequenas áreas”* são quaisquer *subconjuntos da população* para os quais desejamos obter ou produzir estimativas separadas a partir de uma amostra maior. 

Por exemplo, em pesquisas domiciliares são apresentadas estimativas para os homens de 40 anos ou mais, mulheres em idade reprodutiva (15 a 49 anos), crianças e adolescentes, etc.; em pesquisas da indústria, estimativas são apresentadas por grupos de número de pessoas ocupadas; nas pesquisas agropecuárias, costuma-se apresentar estimativas por categorias de área total dos estabelecimentos (em hectares), os estabelecimentos com produção de café; estimativas para municípios ou regiões específicas, etc.

Para tratar do tema usaremos a seguinte notação. 

Seja $d_i$ a variável indicadora do domínio $d$, isto é: $d_i=\left\{\begin{array}{ll} 1 & \textrm{se} \,\,\,\,i \textrm{ pertence ao domínio}\,\, d,\\ 0 & \textrm{caso contrário.}\end{array}\right.\,\,\,$ 
 
Denotamos por $U_d=\{{i: d_i=1}\}$   a população no domínio $d$, e por $N_d=\sum_{i\in U} d_i$ o tamanho do domínio $d$. 

Então, $y_{id}=y_id_i=\left\{\begin{array}{ll} y_i & \textrm{se}\,\, i\in U_d,\\ 0 & \textrm{caso contrário}\end{array}\right.\,\,\,$   define a variável de estudo $y$ relevante para estimação no domínio $d$.

Note que $y_{id}$ é uma variável ‘derivada’, formada pelo produto de duas outras variáveis de pesquisa: $y_i$ e $d_i$.

## Parâmetros-Alvo para o Domínio

Os parâmetros populacionais, que usualmente se deseja estimar para o domínio $d$, são: 

- *Total* do domínio $d$ para uma característica $y$ qualquer, dado por: 

\begin{equation}
Y_d=\sum_{i\in U} y_{id}=\sum_{i\in U} y_id_i=\sum_{i\in U_d}y_i.(\#eq:eqdom1)
\end{equation}
 
- *Média* do domínio $d$ para uma característica $y$ qualquer, dada por: 

\begin{equation}
\overline{Y}_d=Y_d/N_d=\sum_{i\in U} y_{id}/\sum_{i\in U}d_i.(\#eq:eqdom2)
\end{equation}

Note que $\overline{Y}_d$ é um caso especial de Razão de Médias das variáveis $y_{id}$ e $d_i$.

- *Variância* do domínio $d$ para uma característica $y$ qualquer, dada por: 

\begin{equation}
S_d^2=\sum_{i\in U} d_i(y_i-\overline{Y}_d)^2/(N_d-1).(\#eq:eqdom3)
\end{equation}
 
- *Proporção* de unidades populacionais no domínio $d$, dada por: 

\begin{equation}
p_d=N_d/N= \overline {D}.(\#eq:eqdom4)
\end{equation}

## Estimação de Parâmetros para o Domínio

Nesta seção se estuda como estimar os parâmetros populacionais para o domínio $d$ gerados para uma característica $y$ qualquer, com base numa amostra aleatória simples sem reposição de tamanho $n$. 

*Passo 1:* Selecionamos uma AAS de tamanho $n$ da população $U$ de tamanho $N$, e observamos ($y_i$ ; $d_i$) para todo $i\in s$.

*Passo 2:* Então construímos a variável derivada $y_{id}= y_id_i$.

*Passo 3:* Estimamos a média $\overline{Y}_d=Y_d/N_d$ usando:

\begin{equation}
\overline{y}_d=\widehat{Y}_d/\widehat{N}_d=\sum_{i\in s} w_iy_{id}/\sum_{i\in s} w_id_i=(N/n)\sum_{i\in s} y_{id}/(N/n)\sum_{i\in s}d_i= \sum_{i\in s}y_{id}/n_d (\#eq:eqdom5)
\end{equation}

onde $n_d$ é o número de observações no domínio $d$ na amostra. Note que $n_d$ é uma *variável aleatória*.

O estimador de média do domínio $d$ é uma razão de totais estimados. 

Para obter sua variância, podemos recorrer aos resultados disponíveis, no capítulo 6, para estimar razões, resultando em:

\begin{eqnarray}
V_{AAS}(\overline{y}_d) & \cong & \frac{1}{p_d^2}\left(1-\frac{n}{N}\right)\frac{1}{n}\frac{1}{N-1}\displaystyle\sum_{i\in U}\left(y_{id}-\overline{Y}_d d_i\right)^2 \\ &=& \frac{1}{p_d^2}\left(1-\frac{n}{N}\right)\frac{1}{n}\frac{1}{N-1}\displaystyle\sum_{i\in U} d_i\left(y_i-\overline{Y}_d\right)^2 (\#eq:eqdom6)
\end{eqnarray}

O estimador de variância correspondente é:
 
\begin{equation}
\widehat V_{AAS}(\overline{y}_d) = \frac{1}{p_d^2}\left(1-\frac{n}{N}\right)\frac{1}{n}\frac{1}{n-1}\displaystyle\sum_{i\in s} d_i\left(y_i-\overline{y}_d\right)^2(\#eq:eqdom7)
\end{equation}

###Estimação da Média do Domínio: Propriedades Condicionais (fixando $n_d$)

[@Cochran1977] (seção 2.12) sugere analisar a distribuição da média considerando o tamanho da amostra no domínio $n_d$ como fixo (em seu valor observado). Nesse caso, mostra que as $n_d$ observações na amostra $s$ formam uma AAS da população $U_d$.

Então segue-se que: 

 \begin{equation}
 V_{AAS}(\overline{y}_d |\,n_d>0)= \left(1-\frac{n_d}{N_d}\right)\frac{S_d^2}{n_d}(\#eq:eqdom8)
\end{equation}

A variância pode então ser estimada usando:

\begin{equation}
\widehat V_{AAS}(\overline{y}_d |\,n_d>0)= \left(1-\frac{n_d}{N_d}\right)\frac{s_d^2}{n_d}(\#eq:eqdom9)
\end{equation}
 
onde $s_d^2=\sum_{i\in s} d_i(y_i-\overline{y}_d)^2/(n_d-1)$  é um estimador não viciado para $S_d^2$  (quando $n_d$ é fixado).

Se $N_d$ for desconhecido, $\widehat V_{AAS}(\overline{y}_d |\,n_d>0)$  não é calculável.

[@Cochran1977] (p. 35) sugere substituir $n_d/N_d$ por $n/N$, o que implica em:
 
 \begin{equation}
 \widehat V_{AAS}^*(\overline{y}_d |\,n_d>0)= \left(1-\frac{n}{N}\right)\frac{s_d^2}{n_d}(\#eq:eqdom10)
\end{equation}
 
###Estimação de Total do Domínio 

Para obter estimadores do total populacional $Y_d$ note que: $Y_d=N_d\overline{Y}_d$. 

Portanto, há duas situações importantes a distinguir:

-	Quando o tamanho do domínio $(N_d)$ é *conhecido*; e

-	Quando o tamanho do domínio $(N_d)$ é *desconhecido*.

Para estimar o Total supondo que $N_d$ é conhecido tem-se: 

\begin{equation}
\widehat{Y}_d^R=N_d\overline{y}_d=N_d/n_d\sum_{i\in s} y_{id}(\#eq:eqdom11)
\end{equation}

\begin{equation}
V_{AAS}\left(\widehat{Y}_d^R |\,n_d>0 \right)= N_d^2\left(1-\frac{n_d}{N_d}\right)\frac{S_d^2}{n_d}(\#eq:eqdom12)
\end{equation}

A variância pode então ser estimada usando:

\begin{equation}
\widehat V_{AAS}\left(\widehat{Y}_d^R |\,n_d>0 \right)= N_d^2\left(1-\frac{n_d}{N_d}\right)\frac{s_d^2}{n_d}(\#eq:eqdom13)
\end{equation}

Para estimação não viciada do total supondo que $N_d$ é desconhecido, usar: 

\begin{equation}
\widehat{Y}_d=N/n\sum_{i\in s} y_{id}.(\#eq:eqdom14)
\end{equation}

Para prova deste resultado basta aplicar os resultados usuais de estimação de totais sob AAS para a variável derivada $y_{id}$.
 
\begin{equation}
V_{AAS}(\widehat{Y}_d) =N^2\left(1-\frac{n}{N}\right)\frac{1}{n}\frac{1}{N-1}\displaystyle\sum_{i\in U} \left(y_{id}-\frac{Y_d}{N}\right)^2(\#eq:eqdom15)
\end{equation}

\begin{equation}
\widehat V_{AAS}(\widehat{Y}_d) =N^2\left(1-\frac{n}{N}\right)\frac{1}{n}\frac{1}{N-1}\displaystyle\sum_{i\in s} \left(y_{id}-\frac{t_d}{n}\right)^2(\#eq:eqdom16)
\end{equation}

onde $t_d$ é o total de unidades na amostra pertencentes ao domínio, dado por: $t_d=\displaystyle\sum_{i \in s} d_i$.

O Quadro a seguir apresenta um resumo da estimação de parâmetros média e total do domínio  $d$ sob AAS. 

\begin{array}{|c|c|}\hline
\textrm{Parâmetro do Domínio}\,\,d & \textrm{Estimador do Domínio}\,\,d\,\,\text{sob AAS} 

\\\hline\overline{Y}_d=Y_d/N_d & \overline{y}_d=\widehat{Y}_d/\widehat{N}_d=\displaystyle\sum_{i\in s}y_{id}/n_d 

\\\hline Y_d=N_d\overline{Y}_d & \widehat{Y}_d^R=N_d\overline{y}_d\,\,\,(N_d\,\text{conhecido}) 

\\ & \widehat{Y}_d=N/n\displaystyle\sum_{i\in s} y_{id}\,\,\,(N_d\,\text{desconhecido}) 

\\\hline V_{AAS}(\overline{y}_d)\cong \frac{1}{p_d^2}\left(1-\frac{n}{N}\right)\frac{1}{n}\frac{1}{N-1}\displaystyle\sum_{i\in U} d_i\left(y_i-\overline{Y}_d\right)^2 & \widehat V_{AAS}(\overline{y}_d) = \frac{1}{p_d^2}\left(1-\frac{n}{N}\right)\frac{1}{n}\frac{1}{n-1}\displaystyle\sum_{i\in s} d_i\left(y_i-\overline{y}_d\right)^2

\\\hline V_{AAS}(\overline{y}_d |\,n_d>0)= \left(1-\frac{n_d}{N_d}\right)\frac{S_d^2}{n_d} & \widehat V_{AAS}(\overline{y}_d |\,n_d>0)= \left(1-\frac{n_d}{N_d}\right)\frac{s_d^2}{n_d}\\\,\,(n_d\,\text{fixo})

\\ & \widehat V_{AAS}^*(\overline{y}_d |\,n_d>0)= \left(1-\frac{n}{N}\right)\frac{s_d^2}{n_d}
\\&\,(N_d\,\text{desconhecido})

\\\hline V_{AAS}\left(\widehat{Y}_d^R |\,n_d>0 \right)= N_d^2\left(1-\frac{n_d}{N_d}\right)\frac{S_d^2}{n_d} & \widehat V_{AAS}\left(\widehat{Y}_d^R |\,n_d>0 \right)= N_d^2\left(1-\frac{n_d}{N_d}\right)\frac{s_d^2}{n_d}

\\\hline V_{AAS}(\widehat{Y}_d) =N^2\left(1-\frac{n}{N}\right)\frac{1}{n}\frac{1}{N-1}\displaystyle\sum_{i\in U} \left(y_{id}-\frac{Y_d}{N}\right)^2  & \widehat V_{AAS}(\widehat{Y}_d) =N^2\left(1-\frac{n}{N}\right)\frac{1}{n}\frac{1}{N-1}\displaystyle\sum_{i\in s} \left(y_{id}-\frac{t_d}{n}\right)^2

\\\hline \end{array}


###Intervalos de Confiança na Estimação de Parâmetros para o Domínio

A obtenção de intervalos de confiança na estimação de parâmetros populacionais para o domínio requer *amostra grande no domínio*.

Nesse caso, valem as seguintes aproximações:

$$\left(\widehat{Y}_d^R-Y_d\right)/\sqrt{\widehat V_{AAS}\left(\widehat{Y}_d^R \right)}\approx N(0;1)\,\,\textrm{para}\,\, n_d \,\,\textrm{grande.}$$
 
$$\left(\widehat{Y}_d-Y_d\right)/\sqrt{\widehat V_{AAS}\left(\widehat{Y}_d \right)}\approx N(0;1)\,\,\textrm{para}\,\, n_d\,\,\textrm{grande.}$$
 
$$\left(\overline{y}_d-\overline{Y}_d\right)/\sqrt{\widehat V_{AAS}(\overline{y}_d)}\approx N(0;1)\,\,\textrm{para} \,\,n_d\,\,\textrm{grande.}$$
Desse modo, as respectivas expressões dos intervalos de confiança de nível (1-$\alpha$)% para a estimação de total e média do domínio $d$ sob AAS passam a ser: 

\begin{equation} 
\displaystyle IC_{AAS}(Y_d;1-\alpha)=\left[\widehat{Y}_d^R-z_{\alpha/ 2}\sqrt{\widehat V_{AAS}\left(\widehat{Y}_d^R \right)}\,\,;\,\widehat{Y}_d^R+z_{\alpha/2}\sqrt{\widehat V_{AAS}\left(\widehat{Y}_d^R \right)}\,\right] (\#eq:eqdom17) \end{equation}

\begin{equation} 
\displaystyle IC_{AAS}(Y_d;1-\alpha)=\left[\widehat{Y}_d-z_{\alpha/ 2}\sqrt{\widehat V_{AAS}\left(\widehat{Y}_d \right)}\,\,;\,\widehat{Y}_d+z_{\alpha/2}\sqrt{\widehat V_{AAS}\left(\widehat{Y}_d \right)}\,\right] (\#eq:eqdom18) \end{equation}

\begin{equation} 
\displaystyle IC_{AAS}(\overline Y_d;1-\alpha)=\left[\overline y_d-z_{\alpha/ 2}\sqrt{\widehat V_{AAS}\left(\overline y_d \right)}\,\,;\,\overline y_d+z_{\alpha/2}\sqrt{\widehat V_{AAS}\left(\overline y_d \right)}\,\right] (\#eq:eqdom19) \end{equation}

###Comparação da Eficiência dos Estimadores de Total do Domínio

Foram propostos dois estimadores para o total populacional $Y_d$. Portanto, é importante saber quando usar um ou outro.

Comparando as respectivas variâncias [@Cochran1977] (p. 38), tem-se:

\begin{equation}
\frac{V_{AAS}\left(\widehat{Y}_d^R|n_d>0 \,\,\textrm{e} \,\,N_d \,\textrm{conhecido}\right)}{V_{AAS}\left(\widehat{Y}_d)|n_d>0 \,\,\textrm{e}\,\, N_d \,\textrm{desconhecido}\right)}\cong \frac{S_d^2}{S_d^2 +(1-p_d)\overline{Y}_d^2}= \frac{C_d^2}{C_d^2 +(1-p_d)}(\#eq:eqdom20)
\end{equation}

onde $C_d^2=S_d^2/\overline{Y}_d^2$ é a variância relativa do domínio $d$ para uma característica $y$ qualquer.
 
Isto mostra que conhecer o valor de $N_d$ sempre melhora a eficiência do estimador de total do domínio $d$; e que a melhoria é maior quando $p_d$ é pequena. Além disso, para valores pequenos de $p_d$ o estimador do total do domínio $d$ para $N_d$ desconhecido é bem pouco preciso, devendo talvez indicar o uso de um desenho de amostragem específico para a estimação de $Y_d$.  

###Estimação de Proporção no Domínio

Há o caso de interesse prático e de aplicação de estimação de proporção no domínio. O problema surge quando se torna necessário estimar uma proporção de unidades de uma certa categoria da população e que são também portadoras de certo atributo. 

Por exemplo, quando se deseja estimar a proporção de mulheres de 10 anos ou mais que já tiveram pelo menos um filho, ou quando se procura estimar a proporção de homens de 18 anos ou mais que prestaram o serviço militar. 

Em casos como os acima citados, o problema é estimar proporções dos domínios da população: mulheres de 10 anos ou mais; e homens com 18 anos ou mais.
 
Nesta situação, suponha-se que as unidades da população possam ser classificadas em três categorias mutuamente exclusivas A,B e C e que se deseja estimar a proporção $p'_A$ de unidades da categoria A dentro do domínio formado pelas categorias A e C. Se $N_A$,$N_B$ e $N_c$ forem, respectivamente, os números de unidades da população pertencentes às categorias A,B e C então: 

\begin{equation}
p_A=\frac{N_A}{N}(\#eq:eqdom21)
\end{equation} 
é a proporção de unidades da população no domínio A;

\begin{equation}
p_A^´=\frac{N_A}{N_A+N_B}(\#eq:eqdom22)
\end{equation}
é a proporção de unidades da população das categorias A e B no domínio A;

Um estimador para $p_A^´$ pode ser construído com base na proporção de unidades da amostra pertencentes à categoria A dentro das unidades pertencentes às categorias A e B, isto é: 

\begin{equation}\widehat p_A^´=\frac{n_A}{n_A+n_B}(\#eq:eqdom23)
\end{equation}
sendo $n_A$,$n_B$ e $n_c$, respectivamente, os números de unidades da amostra pertencentes às categorias A,B e C.

Fazendo $N^´=N_A+N_B$ e $n^´=n_A+n_B$, pode-se escrever $p_A^´$ e $\widehat p_A^´$ como: $p_A^´=\frac{N_A}{N^´}\quad\text{e}\quad\widehat p_A^´=\frac{n_A}{n^´}$

Assim, é possível mostrar que a distribuição de probabilidades de $p_A^´$ dado $n^´$ é também binomial ou hipergeométrica, conforme a amostra seja com ou sem reposição, isto é: 

\begin{equation}
P\left[\widehat p_A^´=\frac{k}{n^´}|n^´\right]=\binom{N^´}{k}p_A^{´k}(1-p_A^´)^k\quad \,\,k=0,1,2,\dots,n^´(\#eq:eqdom24)
\end{equation} 
na amostra com reposição. 


\begin{equation}
P\left[\widehat p_A^´=\frac{k}{n^´}|n^´\right]=\frac{\binom{N_A}{k}\binom{N_B}{n^´-k}}{\binom{N^´}{n^´}}\quad\,\,k=0,1,2,\dots,min\{{n^´,N_A}^´\}\quad(\#eq:eqdom25)
\end{equation} 
na amostra sem reposição. 

Consequentemente a variância do estimador da proporção $p_A^´$  sob AAS será dada por:

\begin{equation}
V_{AAS}(\widehat p_A^´)=\left(\frac{N^´-n^´}{N^´-1}\right)\frac {p_A^´(1-p_A^´)}{n^´}(\#eq:eqdom26) 
\end{equation}

Um estimador da variância de $\widehat p_A^´$ sob AAS resulta em:

\begin{equation}
\widehat V_{AAS}(\widehat p_A^´)= \left((1-\frac{n^´}{N^´}\right)\frac {\widehat p_A^´(1-\widehat p_A^´)}{n^´-1}(\#eq:eqdom27) 
\end{equation}

Admite-se então, a validade da aproximação normal para a distribuição de $\widehat p_A^´$ e considera (tal como no capítulo 5) uma *correção de continuidade* acrescentando a fração $1/2n^´$ à margem de erro do intervalo de confiança pelo fato de se fazer uma aproximação de uma distribuição discreta (Binomial ou Hipergeométrica) pela distribuição Normal, que é contínua. Desse modo a expressão do intervalo de confiança para a proporção populacional $p_A^´$ pode ser obtida com base em:

\begin{equation}
IC_{AAS} (p_A^´; 1 - \alpha) = \left [\widehat p_A^´\mp z_{\alpha/2} \sqrt{\left(1-\frac{n^´}{N^´}\right)\frac{\widehat p_A^´(1-\widehat p_A^´)}{n^´-1}}+\frac{1}{2n^´}\right] (\#eq:eqdom28)
\end{equation}

Caso $N^´$ não seja conhecido $n^´/N^´$ pode ser aproximado por $n/N$ na expressão anterior. 


##Exercícios

(#exe:desemprego) A população total de uma cidade é de 5000 pessoas. Uma amostra de fração amostral igual a 20% é selecionada aleatoriamente sem reposição. Na amostra 4000 pessoas estão na força de trabalho, das quas 200 estão sem emprego.
a) que proporção da força de trabalho está desempregada?
b) qual o intervalo com 68% de confiança para essa proporção populacional? 









