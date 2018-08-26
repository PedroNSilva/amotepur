# Estimação Para Domínios de Estudo 

## Domínios de Estudo 

Em inúmeras pesquisas são produzidas e divulgadas estimativas para um certo conjunto de categorias nas quais a população está dividida. 

*Domínios* de estudo, *subpopulações* ou *“pequenas áreas”* são quaisquer *subconjuntos da população* para os quais desejamos obter ou produzir estimativas separadas a partir de uma amostra maior. 

Por exemplo, em pesquisas domiciliares são apresentadas estimativas para os homens de 40 anos ou mais, mulheres em idade reprodutiva (15 a 49 anos), crianças e adolescentes, etc.; em pesquisas da indústria, estimativas são apresentadas por grupos de número de pessoas ocupadas; nas pesquisas agropecuárias, costuma-se apresentar estimativas por categorias de área total dos estabelecimentos (em hectares), os estabelecimentos com produção de café; estimativas para municípios ou regiões específicas, etc.

Para tratar do tema usaremos a seguinte notação. 

Seja $d_i$ a variável indicadora do domínio $d$, isto é: $d_i=\left\{\begin{array}{ll} 1 & \textrm{se} \,\,\,\,i \textrm{ pertence ao domínio}\,\, d,\\ 0 & \textrm{caso contrário.}\end{array}\right.\,\,\,$ 
 
Denotamos por $U_d=\{{i: d_i=1}\}$   a população no domínio $d$, e por $N_d=\sum_{i\in U} d_i$ o tamanho do domínio $d$. 

Então, $y_{id}=y_id_i=\left\{\begin{array}{ll} y_i & \textrm{se}\,\, i\in U_d,\\ 0 & \textrm{caso contrário}\end{array}\right.\,\,\,$   define a variável de estudo $y$ relevante para estimação no domínio $d$.

Note que $y_{id}$ é uma variável ‘derivada’, formada pelo produto de duas outras variáveis de pesquisa: $y_i$ e $d_i$.

## Parâmetros-Alvo Para Domínios

Os parâmetros populacionais que usualmente se deseja estimar, são: 

- *Total* do domínio para uma característica $y$ qualquer, dado por: $Y_d=\sum_{i\in U} y_{id}=\sum_{i\in U} y_id_i=\sum_{i\in U_d}y_i$.
 
- *Média* do domínio para uma característica $y$ qualquer, dada por: $\overline{Y}_d=Y_d/N_d=\sum_{i\in U} y_{id}/\sum_{i\in U}d_i$. 
Note que $\overline{Y}_d$ é um caso especial de Razão de Médias das variáveis $y_{id}$ e $d_i$.

- *Variância* do domínio para uma característica $y$ qualquer, dada por: $S_d^2=\sum_{i\in U} d_i(y_i-\overline{Y}_d)^2/(N_d-1)$.
 
- *Proporção* de unidades populacionais no domínio, dada por: $p_d=N_d/N= \overline {D}$.

## Estimação de Parâmetros de Domínios

Nesta seção se estuda como estimar os parâmetros populacionais gerados para uma característica $y$ qualquer, com base numa amostra aleatória simples sem reposição de tamanho $n$. 

*Passo 1:* Selecionamos uma AAS de tamanho $n$ da população $U$ de tamanho $N$, e observamos ($y_i$ ; $d_i$) para todo $i\in s$.

*Passo 2:* Então construímos a variável derivada $y_{id}= y_id_i$.

*Passo 3:* Estimamos a média $\overline{Y}_d=Y_d/N_d$ usando:$\overline{y}_d=\hat{Y}_d/\hat{N}_d=\sum_{i\in s} w_iy_{id}/\sum_{i\in s} w_id_i=(N/n)\sum_{i\in s} y_{id}/(N/n)\sum_{i\in s}d_i= \sum_{i\in s}y_{id}/n_d$


onde $n_d$ é o número de observações no domínio $d$ na amostra. Note que $n_d$ é uma *variável aleatória*.

O estimador de média é uma razão de totais estimados. 

Para obter sua variância, podemos recorrer aos resultados disponíveis, no capítulo 5, para estimar razões, resultando em:

\begin{eqnarray}V_{AAS}(\overline{y}_d) & \cong & \frac{1}{p_d^2}\left(1-\frac{n}{N}\right)\frac{1}{n}\frac{1}{N-1}\displaystyle\sum_{i\in U}\left(y_{id}-\overline{Y}_d d_i\right)^2 \\ &=& \frac{1}{p_d^2}\left(1-\frac{n}{N}\right)\frac{1}{n}\frac{1}{N-1}\displaystyle\sum_{i\in U} d_i\left(y_i-\overline{Y}_d\right)^2 \end{eqnarray}

O estimador de variância correspondente é:
 
$$\hat V_{AAS}(\overline{y}_d) = \frac{1}{p_d^2}\left(1-\frac{n}{N}\right)\frac{1}{n}\frac{1}{n-1}\displaystyle\sum_{i\in s} d_i\left(y_i-\overline{y}_d\right)^2$$

**Estimação da Média: Propriedades Condicionais (fixando $n_d$)**

Cochran (1977, seção 2.12) sugere analisar a distribuição da média considerando o tamanho da amostra no domínio $n_d$ como fixo (em seu valor observado). Nesse caso, mostra que as $n_d$ observações na amostra $s$ formam uma AAS da população $U_d$.

Então segue-se que: 

 $$V_{AAS}(\overline{y}_d |\,n_d>0)= \left(1-\frac{n_d}{N_d}\right)\frac{S_d^2}{n_d}$$

A variância pode então ser estimada usando:

$$\hat V_{AAS}(\overline{y}_d |\,n_d>0)= \left(1-\frac{n_d}{N_d}\right)\frac{s_d^2}{n_d}$$
 
onde $s_d^2=\sum_{i\in s} d_i(y_i-\overline{y}_d)^2/(n_d-1)$  é um estimador não viciado para $S_d^2$  (quando $n_d$ é fixado).

Se $N_d$ for desconhecido, $\hat V_{AAS}(\overline{y}_d |\,n_d>0)$  não é calculável.

Cochran (1977, p. 35) sugere substituir $n_d/N_d$ por $n/N$, o que implica em:
 
 $$\hat V_{AAS}^*(\overline{y}_d |\,n_d>0)= \left(1-\frac{n}{N}\right)\frac{s_d^2}{n_d}$$
 
**Estimação de Parâmetros de Domínios – Total $Y_d$**

Para obter estimadores do total populacional $Y_d$ note que: $Y_d=N_d\overline{Y}_d$. 

Portanto, há duas situações importantes a distinguir:

-	Quando o tamanho do domínio $(N_d)$ é *conhecido*; e

-	Quando o tamanho do domínio $(N_d)$ é *desconhecido*.

Para estimar o Total supondo que $N_d$ é conhecido tem-se: $\hat{Y}_d^R=N_d\overline{y}_d=N_d/n_d\sum_{i\in s} y_{id}$

$$V_{AAS}\left(\hat{Y}_d^R |\,n_d>0 \right)= N_d^2\left(1-\frac{n_d}{N_d}\right)\frac{S_d^2}{n_d}$$

A variância pode então ser estimada usando:

$$\hat V_{AAS}\left(\hat{Y}_d^R |\,n_d>0 \right)= N_d^2\left(1-\frac{n_d}{N_d}\right)\frac{s_d^2}{n_d}$$

Para estimação não viciada do total supondo que $N_d$ é desconhecido, usar: $\hat{Y}_d=N/n\sum_{i\in s} y_{id}$.

Para prova deste resultado basta aplicar os resultados usuais de estimação de totais sob AAS para a variável derivada $y_{id}$.
 
$$V_{AAS}(\hat{Y}_d) =N^2\left(1-\frac{n}{N}\right)\frac{1}{n}\frac{1}{N-1}\displaystyle\sum_{i\in U} \left(y_{id}-\frac{Y_d}{N}\right)^2$$

$$\hat V_{AAS}(\hat{Y}_d) =N^2\left(1-\frac{n}{N}\right)\frac{1}{n}\frac{1}{N-1}\displaystyle\sum_{i\in s} \left(y_{id}-\frac{t_d}{n}\right)^2$$

onde $t_d$ é o total de unidades na amostra pertencentes ao domínio, dado por: $t_d=\displaystyle\sum_{i \in s} d_i$.

**Intervalos de Confiança**

A obtenção de intervalos de confiança para os parâmetros populacionais requer *amostras grandes nos domínios*.

Nesse caso, valem as seguintes aproximações:

$$\left(\hat{Y}_d^R-Y_d\right)/\sqrt{\hat V_{AAS}\left(\hat{Y}_d^R \right)}\approx N(0;1)\,\,\textrm{para}\,\, n_d \,\,\textrm{grande.}$$
 
$$\left(\hat{Y}_d-Y_d\right)/\sqrt{\hat V_{AAS}\left(\hat{Y}_d \right)}\approx N(0;1)\,\,\textrm{para}\,\, n_d\,\,\textrm{grande.}$$
 
$$\left(\overline{y}_d-\overline{Y}_d\right)/\sqrt{\hat V_{AAS}(\overline{y}_d)}\approx N(0;1)\,\,\textrm{para} \,\,n_d\,\,\textrm{grande.}$$
 

## Comparação da Eficiência dos Estimadores de Total

Foram propostos dois estimadores para o total populacional $Y_d$. Portanto, é importante saber quando usar um ou outro.

Comparando as respectivas variâncias (Cochran, p. 38), tem-se:

$$\frac{V_{AAS}\left(\hat{Y}_d^R|n_d>0 \,\,\textrm{e} \,\,N_d \,\textrm{conhecido}\right)}{V_{AAS}\left(\hat{Y}_d)|n_d>0 \,\,\textrm{e}\,\, N_d \,\textrm{desconhecido}\right)}\cong \frac{S_d^2}{S_d^2 +(1-p_d)\overline{Y}_d^2}= \frac{C_d^2}{C_d^2 +(1-p_d)}$$

onde $C_d^2=S_d^2/\overline{Y}_d^2$ é a variância relativa do domínio $d$ para uma característica $y$ qualquer.
 
Isto mostra que conhecer o valor de $N_d$ sempre melhora a eficiência do estimador de total; e que a melhoria é maior quando $p_d$ é pequena. Além disso, para valores pequenos de $p_d$ o estimador do total para $N_d$ desconhecido é bem pouco preciso, devendo talvez indicar o uso de um desenho de amostragem específico para a estimação de $Y_d$.  

 
