# Outros Métodos de Amostragem com Equiprobabilidade

Neste capítulo apresentamos dois métodos de amostragem de unidades elementares com equiprobabilidade que são menos usados, mas também podem ser úteis em muitas situações de interesse. O primeiro deles é a *Amostragem Binomial ou de Bernoulli*, e o segundo é a *Amostragem Inversa*.

## Amostragem Binomial ou de Bernoulli (AB) {#binom}

A Amostragem Binomial ou de Bernoulli (AB) oferece outra alternativa (pouco usada) à AAS, para selecionar unidades com *equiprobabilidade*. Trata-se de método de amostragem que também dispensa existência de cadastro prévio para seleção da amostra, podendo a amostra ser selecionada ao mesmo tempo que o cadastro vai sendo construído, como na amostragem sistemática simples.

### Método de seleção da amostra

As unidades aparecem na população ou no cadastro numa certa ordem, digamos igual à dos rótulos $i=1,2,...,N$. Seja $\pi$ a *fração amostral* desejada, tal que $0<\pi<1$. Sejam também $A_1, A_2, ..., A_N$ um conjunto de $N$ variáveis aleatórias *independentes* e distribuídas segundo uma distribuição Uniforme no intervalo [0;1], denotada $U[0;1]$. Associamos $A_i$ com a unidade $i$, para todo $i \in U$.

Então processamos sequencialmente as unidades em $U$, testando para cada $i=1,...,N$ a condição $A_i \le \pi$. Quando $A_i \le \pi$ ocorre, incluímos a unidade $i$ na amostra $s$. Quando $A_i > \pi$, a unidade não é incluída na amostra e passamos à próxima unidade.

### Probabilidades de inclusão na Amostragem Binomial ou de Bernoulli

As probabilidades de inclusão de primeira ordem são:

$\pi_i = P(i \in s) = P(A_i \le \pi) = P(U[0;1] \le \pi) = \pi$

As probabilidades de inclusão de segunda ordem são:

$\pi_{ij} = P(i,j \in s) = P(A_i \le \pi \,\, \textrm{e} \,\, A_j \le \pi) = P(A_i \le \pi) \times P(A_j \le \pi) = \pi^2 \,\,\,\, \forall \,\, i \neq j \in U$

Uma dificuldade associada com Amostragem Binomial ou de Bernoulli é que, antes de ser feita a seleção da amostra, o *tamanho efetivo da amostra* obtida é uma variável aleatória. Isso pode causar dificuldades para quem está planejando a pesquisa. 

Para verificar isso, note que $n = \sum_{i \in U} I(A_i \le \pi)$. Consequentemente,  $n \, \textrm{~ Binomial} (N;\pi)$. Logo: $E(n) = N \times \pi$  e $V(n) = N \times \pi \times(1-\pi)$. 

### Estimação de totais sob Amostragem Binomial ou de Bernoulli 

O estimador HT (não viciado) do total $Y$ é dado por: 

$$
\widehat Y_{AB} = \frac{1}{\pi} \sum_{i \in s} y_i \,\, (\#eq:eqbin1)
$$

A variância desse estimador do total é dada por:

$$
V_{AB}(\widehat Y_{AB}) = \left( \frac{1}{\pi} \right)^2 V \left( \sum_{i \in U} \delta_i y_i \right) = \left( \frac{1}{\pi} \right)^2 \sum_{i \in U} V(\delta_i)y_i^2 = \\ = \left(\frac{1}{\pi}\right)^2 \pi (1-\pi) \sum_{i \in U} y_i^2 = \left(\frac{1}{\pi}-1\right)\sum_{i \in U}y_i^2\,\,(\#eq:eqbin2)
$$

Um estimador não viciado da variância do estimador de total é dado por:

$$
\widehat V_{AB}(\widehat Y_{AB}) = \frac{1}{\pi}\left(\frac{1}{\pi}-1\right)\sum_{i \in s}y_i^2\,\,(\#eq:eqbin3)
$$ 

Devido à variabilidade do tamanho efetivo da amostra, o estimador HT do total é pouco eficiente. Um estimador alternativo para o total, definido sempre que $n>0$, é o estimador tipo razão dado por:

$$
\widehat Y_{AB}^R = \frac{N\pi}{n}\widehat Y_{AB} = N\frac{1}{n}\sum_{i \in s}y_i = N\overline y\,\,(\#eq:eqbin4)
$$ 

Conforme @Sarndal1992 (p. 65), uma aproximação da variância do estimador alternativo de total é dada por:

$$
V_{AB}(\widehat Y_{AB}^R) \doteq N^2 \left(\frac{1}{N \pi}-\frac{1}{N}\right)S_y^2\,\,(\#eq:eqbin5)
$$  

Esta variância é portanto aproximadamente igual à de uma AAS de tamanho igual a $N\pi$, que seria também o tamanho esperado da amostra sob AB. Ainda conforme @Sarndal1992 (p. 63), a variância do estimador simples do total pode ser reescrita como:

$$
V_{AB}(\widehat Y_{AB}) = N^2\left(\frac{1}{N\pi} - \frac{1}{N}\right)S_y^2 \left[1 - \frac{1}{N} + \frac{1}{CV_y^2}\right]\,\,(\#eq:eqbin6)
$$   

Logo, de acordo com @Sarndal1992 (p. 65), a eficiência relativa do estimador alternativo é dada por:

$$
\frac{V_{AB}(\widehat Y_{AB})}{V_{AB}(\widehat Y_{AB}^R)} \doteq \left[1-\frac{1}{N}+\frac{1}{CV_y^2}\right] \doteq \left[1+\frac{1}{CV_y^2}\right]\,\,(\#eq:eqbin7)
$$ 

Essa expressão mostra que o estimador alternativo será tanto mais eficiente que o estimador HT quanto menor for o CV da variável de interesse $y$. Isso faz sentido, porque a variância do estimador HT depende da variabilidade do tamanho efetivo da amostra, e esse componente domina a variância total quando o CV da variável de interesse $y$ diminui.

### Estimação de médias sob Amostragem Binomial 

O estimador HT (não viciado) da média $\overline{Y}$ é dado por: 

$$
{\overline {y}} _{AB} = \frac{1}{N \pi} \sum_{i \in s}y_i\,\,(\#eq:eqbin8)
$$

A variância do estimador HT da média é dada por:

$$
V_{AB} \left({\overline {y}} _{AB} \right) =  \frac{1}{N^2} \left(\frac{1}{\pi}-1\right)\sum_{i \in U}y_i^2\,\,(\#eq:eqbin9)
$$

Um estimador não viciado da variância do estimador HT da média é dado por:

$$
\widehat V_{AB} \left({\overline {y}} _{AB} \right) = \frac{1}{N^2 \, \pi} \left(\frac{1}{\pi}-1\right)\sum_{i \in s}y_i^2\,\,(\#eq:eqbin10)
$$ 

Assim como no caso do estimador de total, devido à variabilidade do tamanho efetivo da amostra, o estimador HT da média é pouco eficiente. Um estimador alternativo para a média, definido sempre que $n>0$, é o estimador tipo razão dado por:

$$
{\overline {y}} _{AB} ^R = \frac{N \pi}{n} {\overline {y}} _{AB} = \frac{1}{n} \sum_{i \in s} y_i \,\, (\#eq:eqbin11)
$$ 

Uma aproximação da variância do estimador alternativo da média é dada por:

$$
V_{AB} \left( {\overline {y}} _{AB} ^R \right) \doteq \left( \frac{1}{N \pi} - \frac{1}{N} \right) S_y^2 \,\, (\#eq:eqbin12)
$$  

Esta variância é portanto aproximadamente igual à do estimador de média sob uma AAS de tamanho igual a $N\pi$, que seria também o tamanho esperado da amostra sob AB. As análises feitas na seção anterior sobre a eficiência relativa dos estimadores de total são válidas também para os estimadores da média.


### Exemplos de aplicação da Amostragem Binomial ou de Bernoulli 

Um exemplo clássico ocorre na inspeção alfandegária praticada na saída de passageiros chegando de vôos internacionais. Quando cada passageiro aperta o botão para saber se sua bagagem será ou não inspecionada pela Receita Federal, está em ação um processo de Amostragem Binomial. Não sabemos o valor da fração amostral estabelecida pela Receita Federal, mas este é o único parâmetro necessário para especificar completamente o processo de amostragem em questão. 

A Amostragem Sistemática também seria viável nesse caso, mas poderia ser mais facilmente burlada por pessoas interessadas em não ter sua bagagem inspecionada, caso fossem capazes de detectar qual é o valor do pulo $K$ sendo praticado. O emprego de Amostragem Binomial impede essa prática, ao tornar imprevisível o resultado de cada sorteio que define se o passageiro terá ou não sua bagagem inspecionada.

Aplicações de Amostragem Binomial para populações em fluxo são convenientes, pois dispensam lista ou cadastro prévios. Deve-se evitar seu uso sempre que $P(n=0)$ for ‘grande’.

XXX Até aqui

## Amostragem Inversa {#inversa}

Na amostragem probabilística usualmente são selecionadas $n$ unidades, que deverão compor a amostra, de uma população ou cadastro de seleção composto de $N$ unidades populacionais, $n<N$.

Essas unidades selecionadas para a amostra serão identificadas e as variáveis de interesse serão medidas utilizando-se a ferramenta adequada de acordo com as característicasda pesquisa em questão. No caso de pesquisas do tipo socioeconômicas, frequentemente são utilizados questionários que a ser respondidos por algum representante da unidade selecionada, que pode ser um domicílio, um estabelecimento industrial, uma escola, etc. Em casos como um processo de controle de qualidade por amostragem poderão ser utilizados instrumentos de medida para conferência das dimensões de uma peça que está sendo fabricada em série ou mesmo a realização de um ensaio específico para testar alguma característica desejável. Muitas vezes esses ensaios podem ser destrutivos e, portanto, este é um exemplo clássico onde a utilização de uma amostra se impõe pela impossibilidade de se testar todas as peças que estiverem sendo fabricadas.

Um dos problemas que podem ocorrer numa investigação por amostragem é a impossibilidade de se entrevistar ou medir todas as $n$ unidades selecionadas para a amostra. Isso pode ocorrer por vários motivos como a dificuldade de se localizar a unidade no campo; a mudança das características da unidade excluindo a mesma do escopo da pesquisa, como, por exemplo, um endereço onde havia um domicílio selecionado que no momento da pesquisa passou a ser uma unidade comercial; a seleção de um domicílio de uso ocasional, como uma casa de veraneio; ausência da pessoa que deveria ser o informante; a simples recusa do informante responder total ou parcialmente a pesquisa. Todas essas questões implicam em uma redução no tamanho da amostra e aumento da imprecisão das estimativas geradas.

Muitas das causas que levam a essa redução da amostra talvez possam ser prevenidas e evitadas por uma atualização mais criteriosa na preparação do cadastro de seleção da amostra, porém é sabido que um cadastro é um ente dinâmico e as mudanças que podem ocorrer no mesmo estão fora do controle do amostrista. Alterações podem ocorrer no momento da realização da pesquisa.

Existem estratégias para tentar contornar esse problema como, por exemplo, o superdimensionamento da amostra. Principalmente em pesquisas que são repetidas no tempo ou pesquisas com características semelhantes a outras já realizadas, pode-se ter uma estimativa das taxas de perda de unidades amostrais que podem ser úteis para orientar o  dimensionamento de uma amostra robusta o suficiente para que, mesmo sofrendo perdas na coleta, possa estimar os parâmetros de interesse com um nível adequado de precisão. Se as perdas forem menores do que o esperado, as estimativas poderão ser até mais precisas o que é até positivo do ponto de vista estatístico.

Outro problema desse tipo de abordagem é quando se está pesquisando eventos de ocorrência rara na população e no cadastro disponível para a seleção da amostra não existe nenhuma indicação sobre essa ocorência nas unidades populacionais. São exemplos desse tipo de pesquisa os estudos sobre determinadas doenças; problemas que podem atingir somente indivíduos de determinado sexo e/ou numa faixa etária restrita; atividades econômicas restritas a um número pequeno de estabelecimentos, etc. Nestes casos pode-se realizar uma etapa prévia de atualização cadastral, comunmente chamada de ***screening*** ou **varredura**, procurando identificar na população aquelas unidades que tem, pelo menos idicativos, das características desejadas. Esse processo, porém, pode ser muito caro inviabilizando sua realização. Em pesquisas que utilizam amostragem de conglomerados o custo dessa opreação pode ser reduzido pela atualização apenas nos conglomerados selecionados para a amostra. Um exemplo desse caso pode ser visto na Pesquisa Nacional por Amostra de Domicílios Contínua - PNAD Contínua do IBGE, em que são atualizados antes da coleta apenas os setores cencitários selecionados como Unidades Primárias de Amostragem - UPA, [@IBGE2014].

As estratégias exemplificadas acima são úteis para tentar minimizar as perdas de unidades amostrais, mas não eliminam o problema da redução no tamanho final da amostra.

Uma outra forma de se tentar garantir que o número de unidades amostrais coletadas seja efetivamente igual ao valor de $n$ desejado é a chamada Amostragem Inversa.

## Amostragem Inversa

A *Amostragem Inversa* foi proposta por [@Haldane1945] como uma forma de enfrentar o problema de amostragem para estimar parâmetros relativos a eventos raros. Em termos gerais, consiste em pesquisar $n$ unidades da população até encontrar $m$ que contenham as caracterísitcas desejadas. Mesmo assim podem ocorrer casos em que a busca se estenda por toda a população (ou estrato ou conglomerado onde se faça uma subamostragem) sem que se encontre as $m$ unidades de interesse.

Suponha que $p$ seja a proporção de unidades da população que posuam determinada característica e $q=1-p$ a proproção das unidades que não possuam a mesma caracterrística. Se forem obaservadas $n$ unidades da população, selecionadas através de um sorteio aleatório, de maneira que nas $n-1$ primeiras unidades observadas forem encontradas $m-1$ unidades com a característica desejada e na observação $n$ a unidade tenha a característica, perfazendo o total de $m$ unidades com essa característica, pode-se definir um estimador não viciado para a proporção $p$ [@Cochran1977] como:
\begin{equation}
\displaystyle \widehat p = \frac {m-1}{n-1}(\#eq:eqinv1)
\end{equation}
A variância do estimador da proporção pode ser aproximada por:
\begin{equation}
\displaystyle \widehat V(\widehat p) = \frac {m(n-m)}{n^2(n-1)}(\#eq:eqinv2)
\end{equation}

O esquema de amostragem inversa pode ser usado no caso geral, onde não se deseja estimar a proporção das unidades que tenha determinada característica mas investigar uma amostra das unidades da população que pertençam a uma determinada população alvo. Por exemplo, pode-se estar interessado em aplicar um questionário às mulheres com idade de 15 até 49 anos, porém não há disponibilidade de um cadastro de tais mulheres, mas apenas do cadastro dos domicílios da área da pesquisa, não havendo indicação de quais deles tem mulheres na faixa etária desejada.

Uma possíbilidade é selecionar sequencialmente os domicílios, com um esquema de seleção aleatória, e aplicar os questionários quando existirem mulheres na faixa etária de interesse e apenas registrar algumas variáveis de controle caso não existam mulheres na faixa de interesse no domicílio selecionado. Assim após visitar $n$ domicílios serão obtidos os questionários relativos aos $m$ domicílios com mulheres de 15 a 49 anos.

### Amostragem Inversa Simples

Seja uma população, composta de $N$ unidades, onde se deseja investigar uma amostra dentre as unidades que fazem parte de uma determinada subpopulação, ou seja, de um subconjunto das unidades populacionais que possuam uma determinada particularidade.

Essa população pode ser descrita como a união de dois subconjuntos, onde um deles será composto de $M=pN$ unidades com a particularidade que interessa e outro de $N-M=(1-p)N$ unidades que não possuam tal particularidade, onde $N$ é total de unidades, conhecido, da população e $p$ é a proporção, desconhecida, de unidades no primeiro subconjunto. 

Pode-se definir tais subpopulações como:

\begin{equation}
\displaystyle C \cup \overline C = U,\quad C \cap \overline C = \emptyset \quad \text{e} \quad C\neq \emptyset,
\end{equation}

onde $C$ é a subpopulação formada pelas unidades com a particularidade de interesse e $\overline C$ a subpopulação complementar.

Um exemplo prático seria o de selecionar uma amostra de domicílios numa localidade para aplicar um questionário a ser respondido apenas por mulheres na faixa etária de 15 até 45 anos. Neste caso poder-se-ia ter acesso a um cadastro de todos os domicílios da localidade, porém sem a indicação de quais desses domicílios têm moradoras na faixa etária de interesse. Os domicílios com mulheres de 15 até 45 anos formariam a subpopulação $C$ e os demais domicílios seriam a subpopulação $\overline C$.

No caso de uma Amostra Inversa Simples - AIS sem reposição serão selecionadas através de um mecanismo de AAS, uma amostra de de $n$ unidades até que $m$ dessas unidades sejam originárias da subpopulação $C$. Dessa maneira, o tamanho da amostra $n$ será uma variável aleatória hipergeométrica negativa, com distribuição de probabilidades dada por:

\begin{equation}\displaystyle
P(n=k)= \frac{M-m+1}{N-k+1}\frac {\binom{M}{m-1}\binom{N-M}{k-m}}{\binom N{k-1}}(\#eq:eqinv3)
\end{equation}

com valor esperado e variância dados por:

\begin{equation}\displaystyle
E(n)= \frac{(N+1)m}{M+1}(\#eq:eqinv4)
\end{equation}

e

\begin{equation}\displaystyle
V(n)= \frac{(N+1)(M-m+1)(N-M)}{(M+1)^2 (M+2)}(\#eq:eqinv5)
\end{equation}

onde $\displaystyle 1 \le m \le M$ e $\displaystyle m \le k \le N$

#### Estimativa da média e total na AIS

Existem várias propostas para se estimar a média (ou total) populacional utilizando a amostragem inversa simples, como o estimador de Horvitz-Thompson apresentado pelos autores em [@Horvitz1952] ou o estimador proposto por Des Raj [@Raj1956], ambos descritos em [@Jordao2012]. Aqui será apresentado o estimador proposto por [@Murthy1957], que é dado por:

\begin{equation}
{\widehat Y}_M = \sum_{i=1}^v y_i \frac {P(s | i)} {P(s)} (\#eq:eqinv6)
\end{equation}

onde $v$ é o número de unidades distintas na amostra, que no caso de amostragem sem reposição será igual a $n$, $P(s|i)$ é a probabilidade condicional de selecionar a amostra $s$ dado que a unidade $i$ foi selecionada e $P(s)$ é a probabilidade de seleção da amostra $s$ .

Para estimar a média populacional, basta dividir o estimador do total pelo tamanho, $N$, da população, ou seja:

\begin{equation}
 {\overline y}_M = \frac 1 N \sum_{i=1}^v y_i \frac {P(s | i)} {P(s)} (\#eq:eqinv7)
\end{equation}

No caso da amostragem inversa podemos reescrever os estimadores acima da forma sugerida por [@SalehiSeber2001].

Seja a função indicadora $I_i$ que assume o valor $1$ se a unidade $i$ da população foi selecionada para a amostra e $0$ caso contrário. No caso da amostragem inversa sabe-se que a última unidade selecionada obrigatoria mente pertence ao subconjunto $C$ da população, como definido acima. Portanto as demais unidades da amostra podem ser alocadas de $(n-1)!$ maneiras, de forma que a amostra $s$ pode ser obtida de $m(n-1)!$ configurações distintas. Para o conjunto das unidades pertencentes à subpopulação $C$ o evento $\{I_i=1,s\}$ pode ocorres de $(m−1)(n−2)!$ maneiras, enquanto que para as unidades pertencentes à subpopulação $\overline C$ esse mesmo evento pode ocorrer de $m(n-2)!$ formas. Sabe-se, ainda, que a seleção das unidades da amostra é feita com equiprobabilidade, onde $P(i)= 1/N$, para $i=1, 2,...,N$. Portanto: 

\begin{equation}
 \frac {P(s | i)} {P(s)}= 
 \begin {cases}  \left[{N(m-1)}\right]/\left[{(n-1)m}\right] & \quad \text{se } i \in C \\\\
 N/(n-1) & \quad \text{se } i \in \overline C 
 \end {cases}(\#eq:eqinv8)
\end{equation}

Dessa maneira pode-se escrever a equação \@ref(eq:eqinv6) como:

\begin{equation}
{\widehat Y}_M = \frac N {n-1}\left( \sum_{i \in C} \frac{m-1} m y_i + \sum_{i \in \overline C} y_i \right)(\#eq:eqinv9)
\end{equation}

Para obter o estimador da média basta dividir a expressão acima por $N$:

\begin{equation}
{\overline y}_M = \frac 1 {n-1}\left( \sum_{i \in C} \frac{m-1} m y_i + \sum_{i \in \overline C} y_i \right)(\#eq:eqinv10)
\end{equation}

### Amostragem inversa com probabilidades desiguais com reposição

Suponha que uma população finita consiste em $N$ unidades com valores de interesse associados $y_1,...,y_N$. A probabilidade de seleção inicial da $i-ésima$ unidade é denotada por $z_i$. O parâmetro a ser estimado é o total da população, dado por $Y=\sum_{i=1}^{N} y_i$. Suponha, como já foi visto anteriormente, que a população é formada por duas subpopulações onde $C$ é a subpopulação formada pelas unidades com uma particularidade de interesse e $\overline C$ a subpopulação complementar. Em amostragem inversa de probabilidades desiguais, selecionamos unidades, uma de cada vez, com probabilidades desiguais com reposição até que tenhamos obtido um dado número $m$ de unidades da classe $C$ na amostra. O tamanho da amostra, $n$,  é uma variável aleatória. 

A amostra final $s$ pode ser dividida em duas partes: uma parte é o conjunto $S_C$ das $m$ unidades da amostra vindas da classe $C$ e $S_{\overline C}$ é o conjunto das $n-m$ unidades da amostra vindas de $_\overline C$. Sejam k e g os números de unidades distintas em $S_C$ e $S_\overline C$, e que são indexados por $i=1,...,k$ e $i=k+1,..., v$  respectivamente. Seja  é o número de vezes que a unidade i aparece na amostra. Com uma amostra ordenada, $S^*$, a probabilidade de obter essa amostra ordenada é $P(S^*)=\prod_{i=1}^v (z_i)^{r_i}$, onde a última unidade amostrada pertence ao conjunto $S_C$.No caso de uma amostra não-ordenada,$s$, com a última unidade amostrada pertencente a $S_C$, após alocar a i-ésima unidade de $k$ unidades amostradas em $S_C$, o resto das unidades amostradas podem ser ordenadas em  $\binom {n-1}{r_1, r_i-1,...,v}$ maneiras. Portanto, a amostra $s$ pode ser construída em $\sum_{i=1}^k\binom {n-1}{r_1, r_i-1,...,v}$ maneiras. A probabilidade de obter uma particular amostra $s$ é $P(s)=\sum_{i=1}^k\binom {n-1}{r_1, r_i-1,...,v} \prod_{i=1}^v (z_i)^{r_i}.$

Assim, um estimador não viciado para o total populacional, Y, pode ser obtido por:
\begin{equation}
\widehat Y = {\hat p}{\overline y}_C + {(1-\hat p)}{\overline y}_\overline C 
\end{equation}
com sua variância estimada por:
\begin{equation}
\widehat V(\widehat Y)=({\overline y}_C – {\overline y}_{\overline C})^2 \widehat V(\hat p)\frac {{\hat \sigma}^2_C} {m} \left [ (m-1) \widehat V(\hat p)-\hat p^* {\hat p}^2 \right ] +\frac {{\hat \sigma}^2_{\overline C}(n-m-1)} {(n-1)(n-2)} 
\end{equation}

onde,
$\hat p$ é dado pela equação \@ref(eq:eqinv1), $\displaystyle \overline y_C=\frac 1 m \sum_{i\in s_C} \frac {y_i}{z_i}\quad$  e  $\displaystyle\quad\overline y_\overline C=\frac 1 {n-m} \sum_{i\in s_\overline C} \frac {y_i}{z_i}$

Os resultados acima podem ser demonstrados utilizando o estimador do total populacional, $Y$, definido por [@Murthy1957].

[@Tille2016] desenvolve a teoria de amostra inversa com probabilidades desiguais a partir de um problema sugerido por uma pesquisa do Statístics Canada, onde é selecionada uma amostra de empresas (ou unidades locais) em estratos representados por regiões econômicas e em cada uma destas empresas deve ser selecionada uma amostra das ocupações que fazem parte de uma lista de ocupações para as quais se deseja obter informações.
Não se conhece *à priori* a lista de ocupações de cada empresa e, portanto, deve-se lançar mão da amostragem inversa selecionando as ocupações dentro de cada empresa, pertencentes à lista de ocupações de interesse, até se obter $m$ ocupações distintas. Essas ocupações podem ser selecionadas com probabilidades proporcionais a sua participação (ou prevalência) na lista de ocupações interesse.






