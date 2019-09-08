# Amostragem Binomial ou de Bernoulli (AB)

A Amostragem Binomial ou de Bernoulli (AB) oferece outra alternativa (pouco usada) à AAS, para selecionar unidades com *equiprobabilidade*.

Trata-se de método de amostragem que *dispensa* existência de cadastro prévio para seleção da amostra, podendo a amostra ser selecionada ao mesmo tempo que o cadastro vai sendo construído.

## Esquema de seleção da amostra

As unidades aparecem na população ou no cadastro numa certa ordem, digamos igual à dos rótulos $i=1,2,...,N$.

Seja $\pi$ uma constante (*fração amostral*) tal que $0<\pi<1$.

Sejam também $A_1, A_2, ..., A_N$ um conjunto de $N$ variáveis aleatórias *independentes* e distribuídas segundo uma distribuição Uniforme no intervalo [0;1], denotada $U[0;1]$.

Associamos $A_i$ com a unidade $i$, para todo $i \in U$.

Então processamos sequencialmente as unidades em $U$, testando para cada $i=1,...,N$ a condição $A_i<\pi$.

Quando $A_i<\pi$ ocorre, incluímos a unidade $i$ na amostra $s$.

Quando $A_i≥\pi$, a unidade não é incluída na amostra e passamos à próxima unidade.

## Probabilidades de inclusão na amostragem binomial ou de Bernoulli

As probabilidades de inclusão de primeira ordem são:

$\pi_i=P(i \in s)=P(A_i<\pi)=P(U[0;1]<\pi)=\pi$

As probabilidades de inclusão de segunda ordem são:

$\pi_{ij}=P(i,j \in s)=P(A_i<\pi\,\, \textrm{e}\,\,A_j<\pi)=P(A_i<\pi)\times P(A_j<\pi)= \pi^2\,\,\,\,\forall\,\, i \neq j \in U$

## Algumas propriedades da amostragem binomial ou de Bernoulli 

Seguem algumas propriedades associadas com a definição dos estimadores na Amostragem Binomial ou de Bernoulli. 

1. Sob AB, o *tamanho efetivo da amostra* obtida é uma variável aleatória (antes de ser feita a seleção da amostra).

Para verificar isso, note que $n= \sum_{i \in U}I(A_i<\pi)$

Consequentemente, $n$~Binomial($N$;$\pi$). Logo: $E(n)= N\times \pi$  e $V(n)= N \times \pi \times(1-\pi)$. 

2. Um estimador não viciado do total $Y$ é: 

\begin{equation}
\widehat Y_{AB}=\frac{1}{\pi} \sum_{i \in s}y_i(\#eq:eqbin1)
\end{equation} 

3. A variância do estimador simples de total é dada por:

\begin{equation}
V(\widehat Y_{AB})=\left(\frac{1}{\pi}\right)^2 V(\sum_{i \in U}\delta_iy_i)=\left(\frac{1}{\pi}\right)^2 \sum_{i \in U}V(\delta_i)y_i^2)=\left(\frac{1}{\pi}\right)^2 \pi(1-\pi)\sum_{i \in U}y_i^2= \left(\frac{1}{\pi}-1\right)\sum_{i \in U}y_i^2(\#eq:eqbin2)
\end{equation} 

4. Um estimador não viciado da variância do estimador de total é dado por:

\begin{equation}
\widehat V(\widehat Y_{AB})= \frac{1}{\pi}\left(\frac{1}{\pi}-1\right)\sum_{i \in s}y_i^2(\#eq:eqbin3)
\end{equation} 

5. Um estimador alternativo para o total, definido sempre que $n>0$, é o estimador tipo razão dado por:

\begin{equation}
\widehat Y_{AB}^R= \frac{N\pi}{n}\widehat Y_{AB}= N\frac{1}{n}\sum_{i \in s}y_i=N\overline y(\#eq:eqbin4)
\end{equation} 

6. Uma aproximação da variância do estimador alternativo de total é dada por:


\begin{equation}
V(\widehat Y_{AB}^R) \cong N^2 \left(\frac{1}{N \pi}-\frac{1}{N}\right)S_y^2(\#eq:eqbin5)
\end{equation}   
[@Sarndal1992], p. 65

7. Esta variância é portanto aproximadamente igual à de uma AAS de igual tamanho esperado $N\pi$.

8. A variância do estimador simples do total pode ser reescrita como:

\begin{equation}
V(\widehat Y_{AB})=N^2\left(\frac{1}{N\pi}-\frac{1}{N}\right)S_y^2 \left[1-\frac{1}{N}+\frac{1}{CV_y^2}\right](\#eq:eqbin6)
\end{equation}   
[@Sarndal1992], p. 63.

9. Logo a eficiência relativa do estimador alternativo é:

\begin{equation}
\frac{V(\widehat Y_{AB})}{V(\widehat Y_{AB}^R)}\cong\left[1-\frac{1}{N}+\frac{1}{CV_y^2}\right]\cong \left[1+\frac{1}{CV_y^2}\right](\#eq:eqbin7)
\end{equation} 
[@Sarndal1992], p. 65.

 
## Exemplos de aplicação da amostragem binomial ou de Bernoulli 

Um exemplo clássico ocorre na saída dos vôos internacionais, quando cada passageiro tem o apertar do botão para saber se sua bagagem será ou não inspecionada pela Receita Federal.

Aplicações de amostragem de Bernoulli para populações em fluxo são convenientes, pois dispensam lista ou cadastro prévios.

Deve-se evitar seu uso sempre que $P(n=0)$ for ‘grande’.

