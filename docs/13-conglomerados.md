# Amostragem de Conglomerados em Um ou Mais Estágios 

## Conceituação básica 

Nos planos amostrais já apresentados (Amostragem Aleatória Simples - com ou sem reposição -, Amostragem Binomial ou de Bernoulli, Amostragem Sistemática, Amostragem com Probabilidades Desiguais - Proporcionais ao Tamanho: com reposição, Poisson, Poisson Sequencial, Pareto - e Amostragem Estratificada Simples) alguns aspectos são comuns: requerem cadastro de unidades individuais para permitir selecionar a amostra; a seleção da amostra é feita num único estágio ou etapa; as unidades de referência são iguais às unidades de amostragem; e o tamanho total da população é conhecido com base no cadastro.

Se tal cadastro não existir ou não puder ser construído ou o custo de atualizá-lo for muito elevado, a solução pode ser através do uso de amostragem de conglomerados, onde grupos de unidades são selecionadas com probabilidades conhecidas. 

A *amostragem de conglomerados* consiste num esquema de amostragem em estágios, sendo que em cada estágio a unidade amostral, para a qual é atribuída a probabilidade de seleção, é grupada em um subconjunto (*conglomerado*) de unidades populacionais. 

A formação de conglomerados pode ser:

 - natural (exemplos: cacho de uvas, turma de alunos, edifício, quarteirão, município); ou 

 - artificial, construído pelo estatístico de acordo com o objetivo da pesquisa (exemplos: conglomerados de seis pessoas, de dez peças industriais do mesmo tipo, de cinco domicílios do mesmo edifício).
 
A unidade populacional depende da análise que está sendo feita e é determinada pelo propósito da pesquisa e não pelo plano amostral. Pode acontecer de mais de uma unidade populacional estar envolvida na pesquisa, quando por exemplo, características de domicílios e de pessoas são investigadas no mesmo levantamento. 

Não há uma definição possível para os conglomerados. Por exemplo, a turma tanto pode ser uma unidade populacional (se estivermos interessados em investigar o número de alunos por turma), como pode ser um conglomerado de alunos (se estivermos interessados em investigar o aproveitamento dos alunos). 

Para exemplificar, o Quadro \@ref(tab:cong) apresenta algumas ilustrações de possíveis conglomerados associados com a população, a variável de interesse e a unidade de referência para análise. 



Table: Quadro 13.1 - Ilustrações de possíveis conglomerados

População                          Variáveis de interesse          Unidade de Referência          Conglomerados                 
---------------------------------  ------------------------------  -----------------------------  ------------------------------
Turmas de alunos                   Alunos por turma                Turma                          Escolas                       
Estudantes de escolas de 2º grau   Aproveitamento dos estudantes   Estudante                      Turmas                        
Visitantes de parques nacionais    Facilidades do parque           Visitante de parque nacional   Veículos que entram no parque 
Passageiros de avião               Propósito da viagem             Passageiro de avião            Lotação de passageiros        
Domicílios                         Características de domicílios   Domicílio                      Setores censitários           
Moradores em favelas do Rio        Características de pessoas      Morador de favela do Rio       Domicílios em favelas do Rio  

Conforme ilustração na Figura \@ref(fig:hierarquia) temos regras de associação com a hieraquia com vários níveis (vários para um), considerando o cadastro de setores, os domicílios como nível 1 e a população de moradores.  

![Ilustração da hierarquia com vários níveis (vários para um)](Figuras/hierarquia.png)

Cabe registrar que os vários planos amostrais discutidos anteriormente podem ser aplicados a amostragem de conglomerados, onde os conglomerados são as unidades amostrais. 

 
## Amostragem de áreas

O cadastro ou sistema de referência da pesquisa é a fonte que serve de guia e permite identificar a população a ser coberta para a seleção de amostras. 

Os esquemas probabilísticos propostos para seleção de amostras pressupõem a existência de uma lista completa das unidades da população a ser pesquisada. Porém, uma lista pode não estar disponível, ou estar desatualizada, ou o custo de preparar uma lista atualizada pode ser proibitivo. Além disso, uma amostra selecionada de uma população dispersa geograficamente provavelmente será muito dispersa também. 

Para reduzir custos é muito frequente o uso de amostragem de conglomerados definidos por áreas geográficas com limites naturais ou artificiais bem definidos. Neste caso a amostra resultante pode ser concentrada dentro de um número de áreas geográficas. 

Portanto, a utilização de amostras de áreas se dá quando não existe um cadastro de boa qualidade disponível e/ou quando a população for muito dispersa e o fator custo de deslocamento for preponderante. Neste caso, a necessidade de uma lista atualizada das unidades para as quais se requer a informação é restrita às áreas que foram selecionadas para a amostra. 

A grande vantagem da amostragem de conglomerados é a sua conveniência operacional vinculada a possíveis reduções de custo. 

Num levantamento de população, por exemplo, é operacionalmente mais conveniente pesquisar todas as pessoas numa amostra de domicílios do que selecionar o mesmo número de pessoas espalhadas por toda a população ou mesmo pesquisar todos os domicílios de uma amostra de áreas (por exemplo, setores) do que selecionar uma amostra do mesmo número de domicílios selecionados aleatoriamente de uma lista de todos os domicílios.  Tal lista nem sempre é disponível e o seu preparo torna a pesquisa bem mais cara. 

Suponha-se que uma AAS de $n=40$ deva ser selecionada de uma população de $N=10.000$ domicílios de uma cidade. Como não dispomos de uma lista atualizada com todos os domicílios, optamos por uma amostra de domicílios localizados dentro de uma amostra de quarteirões. Isto pode ser feito dividindo a área toda da cidade em quarteirões e selecionando 1/25 quarteiros. A probabilidade de selecionar um domicílio na cidade é a probabilidade de selecionar um quarteirão, ou seja, $1/25=400/10.000$.

Portanto, as unidades amostrais são quarteirões selecionados de uma lista completa. A seleção da amostra de quarteirões determina a seleção dos domicílios que estão localizados nos quarteirões. 

Mesmo se a lista de todos os domicílios fosse disponível, considerações na redução do custo pode ser observada na amostra de conglomerados. Pois a localização e identificação dos 400 domicílios espalhados aumentaria o custo com gastos de transporte, bem como um maior tempo para a coleta em comparação com a localização dos quarteirões e visita em todos os domicílios nestes quarteirões. 

Mas para um dado tamanho de amostra, uma unidade menor em geral dá resultados mais precisos do que uma unidade maior. 

Portanto, se compararmos uma amostra de conglomerados com uma amostra de unidades elementares compreendida do mesmo número de elementos, em geral na amostra de conglomerados tem-se:

- o custo por unidade elementar é mais baixo, devido ao mais baixo custo de listagem ou da localização, ou de ambos;

- a variância amostral é mais alta dependendo da homogeneidade dos elementos dos conglomerados. 

Entretanto, levando em conta os aspectos operacionais e a redução de custos (devido ao possível ganho no tempo de coleta, identificação, contato, etc.) que a amostragem de conglomerados proporciona, em muitas situações práticas a perda de eficiência amostral é balaceada com essas vantagens. 


## Definições básicas e notação na amostragem conglomerada

 A população de unidades $U$ é particionada em $N$ grupos *mutuamente exclusivos e exaustivos*, chamados *conglomerados*, denotados $C_1, ..., C_i, ..., C_N$, de modo que: $U=C_1\cup C_2\cup \dots \cup C_N=\displaystyle \bigcup_{i=1}^{N}C_i$ e $C_i\cap C_k=\phi, \,\,i\ne k$.

Então $C_i = \{{\text{unidades pertencentes ao conglomerado}\,\, i }\}$, para $i=1,2,...,N$.

Seja $M_i$ o tamanho de $C_i$. Então $M_1+M_2+\dots+M_N=M_0$ onde $M_0$ é o tamanho total da população. 

Selecione uma amostra $a=\{i_1,\dots,i_n\}$ de tamanho $n\,\, (n>0)$, entre os rótulos de $C = \{1, ..., N\}$ para selecionar os conglomerados, segundo um plano amostral $p(a)$.


### Amostragem Conglomerada em um estágio (AC1)

Para um plano *conglomerado em um estágio (AC1)*, inclua na amostra da pesquisa TODAS as unidades de $U$ encontradas nos conglomerados selecionados em $a$. A amostra $s$ de unidades da população $U$ que serão pesquisadas é dada por:

$s = C_{i_1}\cup C_{i_2}\cup \dots \cup C_{i_n} = \bigcup_{k=1}^{n}C_{i_k}$

Portanto, a amostragem conglomerada em um estágio ou AC1 é caracterizada pelos seguintes aspectos: 

- As unidades populacionais são reunidas em *grupos* denominados *conglomerados*; 

- Uma amostra de unidades é obtida selecionando uma *amostra de grupos* (conglomerados) e incluindo na amostra *todas as unidades* pertencentes aos grupos selecionados.

Segue ilustração utilizando um baralho, onde pode ser observado na Figura \@ref(fig:baralho) que cada grupo de um mesmo número ou letra (Ás,1,2,...7,J,D,K) representa um conglomerado com os quatro diferentes naipes (paus, ouros, copas e espadas).  

![Ilustração de unidades elementares “naturalmente” agrupadas](Figuras/baralho.png)

Na ilustração da Figura \@ref(fig:baralhoAC1) temos a seleção de amostragem conglomerada em um estágio (AC1).

![Ilustração da seleção de amostragem conglomerada em um estágio](Figuras/baralhoAC1.png)

Foram selecionados dois conglomerados (os de número 3 e 7), resultando numa amostra de 8 cartas do baralho (3 de paus, 3 de ouros, 3 de copas, 3 de espadas, 7 de paus, 7 de ouros, 7 de copas, 7 de espadas). 


### Amostragem conglomerada em vários estágios 

A *amostragem conglomerada em vários estágios* é caracterizada por unidades populacionais arranjadas em grupos conforme uma hierarquia, com seleção de grupos nos vários níveis da hierarquia até chegar às unidades elementares (de referência) da pesquisa.

Na amostragem de conglomerados em três estágios adota-se a seguinte terminologia, onde em cada estágio da amostragem considera um tipo de unidade: unidades primárias de amostragem (UPAs); unidades secundárias de amostragem (USAs); e unidades elementares. 

Tal estratégia consiste no arranjo da população em UPAs, as quais são divididas em USAs, que contém as unidades elementares, formando os estágios sucessivos.

*Estágio 1*: amostra de UPAs é selecionada.

*Estágio 2*: amostra de USAs é selecionada dentro de cada uma das UPAs selecionadas no primeiro estágio.

*Estágio 3*: amostra de unidades elementares é selecionada dentro de cada uma das USAs selecionadas. 

**(#exm:exmcon1)** Como exemplo, considere a amostragem em três estágios onde: as UPAs são os Municípios; as USAs são os setores censitários e as unidades elementares são os domicílios.

**Notas**

1) Sem USAs, o esquema acima se torna amostragem conglomerada em dois estágios, ou amostragem de conglomerados com subamostragem.

2) O processo acima pode ser estendido para 4 ou mais estágios.

3) Na prática é raro ver planos com mais de três ou quatro estágios de seleção. 

Segue ilustração na Figura \@ref(fig:baralhoAC2) de amostragem conglomerada em dois estágios (AC2), utilizando o baralho com os grupamentos definidos anteriormente.  

![Ilustração da seleção de amostragem conglomerada em 2 estágios ](Figuras/baralhoAC2.png)

Foram selecionados os conglomerados (UPAs) 3, 7 e J (valete) e selecionadas duas cartas por conglomerado selecionado, resultando numa amostra de 6 cartas do baralho (3 de ouros, 3 de copas, 7 de paus, 7 de copas, valete de copas e valete de espadas). 

Populações humanas em geral são organizadas segundo uma hierarquia definida por regiões, estados, municípios, bairros, endereços, domicílios, famílias, pessoas.

**(#exm:exmcon2)** Como outros exemplos de estruturas com hierarquia, considere:

a) Conglomerados = áreas num mapa; e unidades elementares = fazendas

b) UPAs = hospitais; USAs = enfermarias; e unidades elementares = pacientes

c) UPAs = escolas; USAs = turmas; e unidades elementares = crianças / estudantes

d) Conglomerados = carros cruzando pedágio; e unidades elementares = passageiros nos carros

e) UPAs = empresas industriais; e unidades elementares = unidades locais. 

**(#exm:exmcon3)** Pesquisa Mensal de Emprego na Região Metropolitana de São Paulo realizada pelo IBGE

Consiste em aplicar amostragem conglomerada em três estagios, onde os setores censitários da Região Matroplitana de São Paulo são as UPAs, os domícilios são as USAs e as unidades elementares são os moradores em domicílios particulares. O número médio de domicílios (USAs) por setor (UPA) era de 300 na zona urbana e 200 na zona rural. Todos os moradores dos domicílios selecionados eram pesquisados, sendo que somente os que tinham 10 anos ou mais de idade preenchiam a parte referente às características de ocupação e rendimento. Eram 431 setores na amostra por mês para a Região Metropolitana de São Paulo, aproximadamente 18 domicílios selecionados em cada setor da amostra, resultando em aproximadamente 7.820 domicílios na amostra por mês.

A amostragem conglomerada em vários estágios deve ser adotada em situações em que e porque: 

1. Não existe cadastro de unidades elementares, mas existe (ou se pode construir) um *cadastro de UPAs*.

2. *Concentrar a coleta* de dados em umas poucas localidades reduz o custo de deslocamentos entre unidades elementares.

3. O *acesso* às unidades elementares pode depender de “porteiros” nalgum nível da hierarquia.

4. A maior capacidade de supervisão do trabalho em grupos de unidades pode resultar em melhor qualidade dos dados.


## Teoria básica de estimação para Amostragem Conglomerada em um estágio (AC1)

O Quadro \@ref(tab:tabcon1) apresenta a notação de tamanhos da população e da amostra na AC1 para o conjunto das unidades em questão. 

Quadro 13.2 - Notação dos tamanhos da população e amostra na AC1

\begin{array}\hline
\hline
\textbf{Conjunto}& \textbf{População} & \textbf{Amostra}
\\\hline \textrm{Conglomerados} & N & n
\\\hline \textrm{Unidades no conglomerado}\,\, i & M_i & M_i
\\\hline \textrm{Todas as unidades} & M_0= \displaystyle \sum_{i \in C} M_i & m_0= \displaystyle \sum_{i \in a} M_i
\\\hline \end{array}


O Quadro \@ref(tab:tabcon1) apresenta parâmetros populacionais no conglomerado e em toda população.

Quadro 13.3 - Parâmetros populacionais 

\begin{array}\hline
\hline
\textbf{Descrição} & \textbf{Parâmetros}
\\\hline \textrm{Valor da variável de pesquisa para} & y_{ij}
\\ \textrm{unidade}\,\,j \,\,\textrm{do conglomerado} \,\,i & 
\\\hline \textrm{Total no conglomerado}\,\, i & Y_i=\displaystyle \sum_{j=1}^{M_i} y_{ij}
\\\hline \textrm{Média no conglomerado}\,\, i & \overline Y_i={Y_i}/{M_i}=\displaystyle \sum_{j=1}^{M_i} y_{ij}/{M_i}
\\\hline \textrm{Total populacional} & Y= \displaystyle \sum_{i=1}^{N}Y_i= \sum_{i \in C}Y_i
\\\hline \textrm{Média por conglomerado} & \overline Y_C={Y}/{N}=\left(\displaystyle \sum_{i \in C}Y_i \right)\Big/N
\\\hline \textrm{Média por unidade} & \overline Y={Y}/{M_0}=\left(\displaystyle \sum_{i \in C}Y_i \right)\Big/M_0
\\\hline \end{array}


## Amostragem conglomerada simples (ACS)

O esquema de seleção de uma amostra conglomerada simples consiste nos seguintes passos: 

1. Selecione $n$ conglomerados por AAS, dentre os $N$ existentes.

2. Pesquise cada uma das unidades elementares presentes nos conglomerados selecionados.

A amostra desejada é formada por *todas as unidades elementares existentes nos $n$ conglomerados selecionados*.

O Quadro \@ref(tab:amocong) apresenta as informações amostrais nos conglomerados selecionados e em toda amostra.

Quadro 13.4 - Informações amostrais na ACS  

\begin{array}\hline
\hline
\textbf{Descrição} & \textbf{Valores amostrais}
\\\hline \textrm{Valor da variável de pesquisa para unidade} & y_{ij}\,\,\,\forall j=1,\dots,M_i,
\\ j \,\,\textrm{do conglomerado selecionado}\,\, i & \,\,\,i \in a=\{{i_1, \dots,i_n\}}
\\\hline \textrm{Total no conglomerado}\,\, i\,\,\textrm{da amostra,}\\ i \in a=\{{i_1,\dots,i_n}\}& Y_i=\displaystyle\sum_{j=1}^{M_i} y_{ij}
\\\hline \textrm{Média no conglomerado}\,\,i\,\,\textrm{da amostra,}\\ i \in a=\{{i_1,\dots,i_n}\} & \overline Y_i={Y_i}/{M_i}
\\\hline \textrm{Total amostral} & t= \displaystyle \sum_{i \in a}Y_i 
\\\hline \textrm{Média por conglomerado} & \displaystyle \overline y_C=t/n=(\displaystyle\sum_{i \in a}Y_i)\Big/n
\\\hline \textrm{Média por unidade} & \displaystyle\overline y=t/m_0=(\displaystyle\sum_{i \in a}Y_i)\Big/ (\displaystyle\sum_{i \in a}M_i)
\\\hline \textrm{Probabilidade de inclusão dos}\\ \textrm{conglomerados (qualquer um)} & n/N 
\\\hline \textrm{Probabilidade de inclusão das}\\ \textrm{unidades elementares (todas)} & n/N 
\\\hline \end{array}


### Estimação do total populacional: estimador natural 

O estimador natural, de Horvitz-Thompson, do total populacional é dado por: 

\begin{equation}
\displaystyle \widehat Y= \frac{N}{n}\displaystyle\sum_{i \in a}Y_i= N\overline y_C= \displaystyle\sum_{i \in a}\sum_{j=1}^{M_i} w_{ij} \times y_{ij}\,\,(\#eq:eqcong1)
\end{equation} 

onde $w_{ij} = N/n$ são os pesos individuais.

A variância do estimador natural do total populacional é dada por: 

\begin{equation}
\displaystyle V_{ACS}\left(\widehat Y \right) = N^2 \frac{1-f}{n} S_e^2 \,\,(\#eq:eqcong2)
\end{equation} 

onde $f = n/N$ e $\displaystyle S_e^2=\frac{1}{N-1}\displaystyle\sum_{i \in C} \left(Y_i-\overline Y_C \right)^2$ é a *variância entre* os totais dos conglomerados.

O estimador da variância do estimador natural do total populacional é dado por:

\begin{equation}
\displaystyle 
\widehat V_{ACS}\left(\widehat Y \right) = N^2 \frac{1-f}{n} s_e^2 \,\,(\#eq:eqcong3)
\end{equation} 

onde $S_e^2$ é estimado por: $\displaystyle s_e^2=\frac{1}{n-1}\displaystyle\sum_{i \in a} \left(Y_i-\overline y_C \right)^2$.


### Estimação do total populacional: estimador de razão do total

Há situações em que o controle da variação dos tamanhos dos conglomerados pode ser feito através da estimação por razão baseada no tamanho dos conglomerados. 

O estimador de razão para o total populacional baseado no tamanho dos conglomerados é dado por: 

\begin{equation}
\displaystyle \widehat Y_R = \frac{M_0}{m_0}\displaystyle \sum_{i \in a}Y_i = M_0\overline y = \displaystyle \sum_{i \in a}\sum_{j=1}^{M_i}w_{ij}^R\times y_{ij}\,\,(\#eq:eqcong4)
\end{equation} 

onde $w_{ij}^R=M_0/m_0$ são pesos amostrais ‘calibrados’.

Note que este estimador requer que o total de unidades elementares na população $(M_0)$ seja conhecido. Portanto, em muitas situações este estimador não é viável.

A variância aproximada do estimador de razão do total pode ser obtida por:

\begin{equation}
\displaystyle V_{ACS}\left(\widehat Y_R \right) \doteq N^2 \frac{1-f}{n}\frac{1}{N-1}\displaystyle \sum_{i=1}^N M_i^2(\overline Y_i - \overline Y)^2 \,\,(\#eq:eqcong5)
\end{equation} 

Esta aproximação requer que o número de conglomerados na amostra $(n)$ seja grande.

O estimador da variância do estimador de razão do total pode ser obtido por: 

\begin{equation}
\displaystyle \widehat V_{ACS}\left(\widehat Y_R \right) = N^2 \frac{1-f}{n}\frac{1}{n-1}\displaystyle \sum_{i \in a}M_i^2(\overline Y_i - \overline y)^2 \,\,(\#eq:eqcong6)
\end{equation} 


### Comparação de estimadores natural e de razão do total

1. Se os conglomerados tiverem todos tamanhos iguais (isto é, se $M_i=\overline M=M_0/N\,\,\forall i=1,\dots,N$) então $\widehat Y_R =\widehat Y$. 

2. Somente $\widehat Y$ pode ser usado quando $M_0$ for desconhecido.

3. $\widehat Y$ é exatamente não viciado.

4. $\widehat Y_R$ é apenas aproximadamente não viciado, para grandes amostras.

5. $\widehat Y_R$ pode ser muito mais preciso que $\widehat Y$ em certos casos.

6. Se $\overline Y_i\doteq\overline Y\,\, \forall i$  então $V_{ACS}\left(\widehat Y_R \right) \doteq 0$ enquanto que $V_{ACS}\left(\widehat Y \right)\propto \displaystyle\sum_{i=1}^N \left(Y_i -\overline Y_C\right)^2= \displaystyle\sum_{i=1}^N \left(M_i \overline Y_i - \overline M \overline Y\right)^2 \doteq \overline Y^2 \displaystyle \sum_{i=1}^N \left(M_i - \overline M \right)^2$

Isto é, a variância do estimador natural incorpora parcela devida à variação dos tamanhos dos conglomerados. A ocorrência de variabilidade nos tamanhos dos conglomerados causa acentuda perda de precisão nos estimadores com amostragem de conglomerados em um estágio. 

Na prática, as médias $\overline Y_i$ são menos variáveis entre conglomerados que os totais $Y_i$, e portanto: $V_{ACS}\left(\widehat Y_R \right) < V_{ACS}\left(\widehat Y \right)$.

Os ganhos de precisão podem ser grandes quando:

* for grande a variação dos tamanhos $M_i$;

* for pequena a variação entre as médias $\overline Y_i$ dos conglomerados.

Na prática, a formação de conglomerados com tamanhos iguais para controlar a variação de tamanho na variância do estimador, e também na variação do tamanho final da amostra nem sempre é possível, sendo que a ocorrência de conglomerados com tamahos iguais é pouco comum. 

Assim, ao invés de tentar controlar artificialmente os tamanhos dos conglomerados, procura-se manter os conglomerados com os tamanhos desiguais e controlar a variação de tamanho dos conglomerados na expectativa de redução da variância e de menor perda de precisão com o uso da amostragem de conglomerados.

Os processo usuais de controle do tamanho dos conglomerados são: 

a) selecionar os conglomerados com probabilidades proporcionais ao tamanho dos conglomerados; 

b) estratificar os conglomerados, de modo que a variável de estratificação seja o tamanho;  

c) usar um estimador de razão, com variável auxiliar definida pelo tamanho do conglomerado. 

 **Recomendações**

Em geral, prefira $\widehat Y_R$ a menos que $M_0$ seja desconhecido.

Se $\widehat Y$ tiver que ser usado: *estratifique os conglomerados* por tamanho; ou *use amostragem de conglomerados com PPT*.
Em termos de eficiência não parece haver vantagem nítida de qualquer das duas alternativas, sendo bastante semelhante os resultados obtidos com ambas as técnicas em termos da precisão final das estimativas. 


### Estimação da média por unidade: estimador natural

O estimador natural, de Horvitz-Thompson, da média por unidade $\overline Y$ é dado por: 

\begin{equation}
\displaystyle\overline y_N= \frac{\widehat Y}{M_0}= \frac{N}{M_0}\frac{1}{n}\displaystyle\sum_{i \in a}Y_i= \overline y_C/\overline M \,\,(\#eq:eqcong7)
\end{equation} 

 A variância do estimador natural da média pode ser obtida por:

\begin{equation}
\displaystyle V_{ACS}\left(\overline y_N \right) = \frac {N^2}{M_0^2}\frac{1-f}{n}S_e^2 = \frac{1}{\overline M^2}\frac{1-f}{n}S_e^2 \,\, (\#eq:eqcong8)
\end{equation} 

O estimador da variância do estimador natural da média é dado por: 

\begin{equation}
\displaystyle\widehat V_{ACS}\left(\overline y_N \right) = \frac {N^2}{M_0^2}\frac{1-f}{n}s_e^2 = \frac{1}{\overline M^2}\frac{1-f}{n}s_e^2\,\, (\#eq:eqcong9)
\end{equation} 


### Estimação da média por unidade: estimador de razão

Um estimador de razão da média por unidade  $\overline Y$ é dado por:  

\begin{equation}
\displaystyle\overline y_R = \frac{\widehat Y_R}{M_0}= \frac{1}{m_0}\displaystyle \sum_{i \in a}Y_i = \overline y_C/\overline m= \overline y\,\, (\#eq:eqcong10)
\end{equation} 

onde $\displaystyle\overline m=\frac{1}{n} \displaystyle \sum_{i \in a} M_i = \frac {m_0}{n}$.

A variância aproximada do estimador de razão da média é dado por: 

\begin{equation}
\displaystyle V_{ACS}\left(\overline y_R \right) \doteq \frac {1}{\overline M^2}\frac{1-f}{n}\frac{1}{N-1}\displaystyle \sum_{i=1}^N M_i^2\left(\overline Y_i-\overline Y\right)^2 \,\,(\#eq:eqcong11)
\end{equation} 

Esta aproximação também é válida somente para amostras grandes.

O estimador da variância do estimador de razão da média é aproximado por: 

\begin{equation}
\displaystyle \widehat V_{ACS}\left(\overline y_R \right) \doteq \frac {1}{\overline m^2}\frac{1-f}{n}\frac{1}{n-1}\displaystyle \sum_{i \in a} M_i^2\left(\overline Y_i-\overline y\right)^2 \,\,(\#eq:eqcong12)
\end{equation} 

com $\overline m$ em lugar de $\overline M$ quando este for desconhecido.

**Notas**

1. Se $M_0$ (ou  $\overline M$) for desconhecido, só podemos usar $\overline y_R$.

2. As comparações de vício e variância feitas para o caso dos estimadores de total seguem válidas para a média.

3. Quase sempre é preferível usar $\overline y_R= \overline y$ , a média simples por unidade elementar. 

O Quadro \@ref(tab:tabcong1) apresenta um resumo da estimação de parâmetros média e total da variável $y$ sob ACS. 

\begin{array}{|c|c|c|}\hline
\textbf{Parâmetro} & \textbf{Estimador ACS}  
\\\hline \overline Y={Y}/{M_0}=\left(\displaystyle \sum_{i \in C}Y_i \right)\Big/M_0 & \displaystyle\overline y_N= \frac{\widehat Y}{M_0}= \frac{N}{M_0}\frac{1}{n}\displaystyle\sum_{i \in a}Y_i= \overline y_C/\overline M 
\\ & \displaystyle\overline y_R = \frac{\widehat Y_R}{M_0}= \frac{1}{m_0}\displaystyle \sum_{i \in a}Y_i = \overline y_C/\overline m= \overline y
\\\hline \displaystyle V_{ACS}\left(\overline y_N \right) = \frac{1}{\overline M^2}\frac{1-f}{n}S_e^2 & \displaystyle \widehat V_{ACS}\left(\overline y_N \right) = \frac{1}{\overline M^2}\frac{1-f}{n}s_e^2
\\ \displaystyle V_{ACS}\left(\overline y_R \right) \doteq \frac {1}{\overline M^2}\frac{1-f}{n}\frac{1}{N-1}\displaystyle \sum_{i=1}^N M_i^2\left(\overline Y_i-\overline Y\right)^2 & \displaystyle \widehat V_{ACS}\left(\overline y_R \right) \doteq \frac {1}{\overline m^2}\frac{1-f}{n}\frac{1}{n-1}\displaystyle \sum_{i \in a} M_i^2\left(\overline Y_i-\overline y\right)^2 
\\\hline Y= \displaystyle \sum_{i=1}^{N}Y_i= \sum_{i \in C}Y_i & \displaystyle \widehat Y= \frac{N}{n}\displaystyle\sum_{i \in a}Y_i= N\overline y_C= \displaystyle\sum_{i \in a}\sum_{j=1}^{M_i} w_{ij} \times y_{ij}  
\\ & \displaystyle \widehat Y_R = \frac{M_0}{m_0}\displaystyle \sum_{i \in a}Y_i = M_0\overline y = \displaystyle \sum_{i \in a}\sum_{j=1}^{M_i}w_{ij}^R\times y_{ij}
\\\hline \displaystyle V_{ACS}\left(\widehat Y \right) = N^2 \frac{1-f}{n} S_e^2 & \displaystyle \widehat V_{ACS}\left(\widehat Y \right) = N^2 \frac{1-f}{n} s_e^2
\\ \displaystyle V_{ACS}\left(\widehat Y_R \right) \doteq N^2 \frac{1-f}{n}\frac{1}{N-1}\displaystyle \sum_{i=1}^N M_i^2(\overline Y_i - \overline Y)^2 & \displaystyle \widehat V_{ACS}\left(\widehat Y_R \right) = N^2 \frac{1-f}{n}\frac{1}{n-1}\displaystyle \sum_{i \in a}M_i^2(\overline Y_i - \overline y)^2
\\\hline \end{array}


## Efeito de plano amostral (EPA)

O *efeito de plano amostral* é uma medida para comparar a *eficiência* de duas estratégias ($E_1$ e $E_2$, digamos), formadas por combinações de *plano amostral e estimador*, para um tamanho de amostra comum.

\begin{equation}
EPA(E_1;E_2) = V_{E_1}(\widehat \theta_1)/V_{E_2}(\widehat \theta_2) \,\,(\#eq:eqcong13)
\end{equation} 

O termo original em inglês é *design effect (DEFF)*, e foi sugerido por [@Kish1965].

Outra medida que dá uma indicação semelhante ao EPA é o “*fator de plano amostral*” $(FPA)$, definido como: $FPA=\sqrt{EPA}$, nome que vem do inglês *design factor*.

O $FPA$ compara diretamente o *desvio padrão* de um estimador sob duas estratégias diferentes de amostragem.

É mais comum o uso do EPA que do FPA, mas são medidas equivalentes, embora expressas em unidades distintas. 

**(#exm:con4)** Efeito do plano amostral ao estimar a média populacional por unidade elementar, através do estimador natural com amostragem conglomerada simples em relação ao uso da AAS, ou seja:

*Estratégia 1*: Amostragem conglomerada simples (ACS), com o estimador natural $\overline y_N$.

*Estratégia 2*: Amostragem aleatória simples (AAS) de mesmo tamanho total $(m_0)$, com o estimador usual de média $\overline y= \displaystyle \sum_{k=1}^{m_0} y_k\Big/{m_0}$.

O efeito do plano amostral (neste caso, conglomeração) ao estimar a média populacional por unidade elementar é:

\begin{equation}
EPA(ACS;\overline y_N) = V_{ACS}(\overline y_N)/V_{AAS}(\overline y)\,\,(\#eq:eqcong14) 
\end{equation} 

EPA mede o quanto a variância do estimador é maior (ou menor) por usar ACS em lugar de AAS.

$EPA > 1 \Rightarrow$ *perda de precisão* devida ao uso de amostragem conglomerada; e

$EPA < 1 \Rightarrow$ *ganho de precisão* devido ao uso de amostragem conglomerada. 

**(#exm:exmcon5)** Efeito do plano amostral ao estimar a média populacional por unidade elementar, através do estimador de razão com amostragem conglomerada simples em relação ao uso da AAS, ou seja:

*Estratégia 1*: Amostragem conglomerada simples (ACS), com estimador de razão $\displaystyle \overline y_R= \frac{1}{m_0}\displaystyle \sum_{i \in a}Y_i$ para a média.

*Estratégia 2*: Amostragem aleatória simples (AAS) de mesmo tamanho total $(m_0)$, com o estimador usual de média $\overline y= \displaystyle \sum_{k=1}^{m_0}y_k\Big/m_0$.

O efeito do plano amostral (neste caso, conglomeração) ao estimar a média populacional por unidade elementar é:

\begin{equation}
EPA(ACS;\overline y_R) = V_{ACS}(\overline y_R)/V_{AAS}(\overline y)\,\,(\#eq:eqcong15) 
\end{equation}

**Nota:** Os estimadores pontuais são idênticos; somente os planos amostrais (e as variâncias) são diferentes. 

Se os tamanhos dos conglomerados forem *iguais*, isto é, se $M_i=\overline M\,\,\forall i=1,\dots,N$, então, de acordo com ([@Cochran1977], p. 252) tem-se:

\begin{equation}
EPA(ACS;\overline y_R) \doteq 1+(\overline M -1) \times \rho \,\,(\#eq:eqcong16) 
\end{equation}

onde:

$\displaystyle\rho= \frac {\displaystyle\sum_{i=1}^{N}\sum_{j=1}^{\overline M}\sum_{k\ne j=1}^{\overline M}\left(y_{ij}-\overline Y\right)\left(y_{ik}-\overline Y\right)}{\left(\overline M -1\right)\left(N\overline M-1\right)S_y^2} \doteq 1-\displaystyle\frac{S_D^2}{S_y^2}$  é o coeficiente de correlação intraconglomerado (ou intraclasse).

$S_D^2$ é a medida da variância *dentro* dos conglomerados, dada por: 

$\displaystyle S_D^2=\frac{1}{N}\displaystyle\sum_{i=1}^{N}\frac{1}{\overline M -1} \sum_{j=1}^{\overline M}\left(y_{ij}-\overline Y_i\right)^2= \frac {1}{N}\sum_{i=1}^{N}S_i^2$ com  $\displaystyle S_i^2=\frac{1}{\overline M -1} \sum_{j=1}^{\overline M}\left(y_{ij}-\overline Y_i\right)^2$. 

$S_y^2$ é a medida da variância *total*, dada por: 
 $\displaystyle S_y^2=\frac{1}{N \overline M -1}\sum_{i=1}^N \sum_{j=1}^{\overline M}\left(y_{ij}-\overline Y\right)^2$.

A expressão para o $EPA(ACS;\overline y_R)$  resulta do uso das expressões de acordo com ([@Cochran1977], p. 241):

\begin{equation}
\displaystyle V_{ACS}(\overline y_R) \doteq\frac {1-f}{n \overline M}S_y^2[1+(\overline M -1) \rho] \,\,(\#eq:eqcong17) 
\end{equation}

\begin{equation}
\displaystyle V_{AAS}(\overline y) =\frac {1-f}{n \overline M}S_y^2 \,\, (\#eq:eqcong18) 
\end{equation}

Cabem algumas considerações relacionadas com a variação do $EPA$ para ACS: 

1. Se os conglomerados tiverem variância dentro grande, isto é, se $\displaystyle S_D^2 \doteq S_y^2$, então $\rho \doteq 0$ e portanto, $EPA(ACS; \overline y_R)\doteq 1 +(\overline M -1) \times 0 =1$.

Nesse caso, não ocorreria perda de precisão devido ao uso de amostragem conglomerada.

2. Pode ser demonstrado que $\displaystyle -\left(\frac{N-1}{M_0-N}\right)\le \rho \le 1$, ou ainda, de forma aproximada, que $\displaystyle\frac{-1}{\overline M -1} \le \rho \le1$.

Usualmente $\rho>0$, porque os conglomerados tendem a ser mais homogêneos que a população em geral.

“Birds of a feather flock together!”

Consequência: $EPA(ACS; \overline y_R)>1$ na maioria das vezes.

3. Raramente $\rho< 0$, caso em que amostragem conglomerada simples seria mais eficiente que AAS.

4. Num caso extremo, $\rho = 1$ e portanto $EPA=\overline M$ e 
$\displaystyle V_{ACS}(\overline y_R) =EPA\times V_{AAS}(\overline y)\doteq  \overline M \times \frac{S_y^2}{n \overline M}= \frac{S_y^2}{n}$

Nesse caso a precisão da amostra conglomerada de tamanho total igual a $n \overline M$ é equivalente apenas àquela obtida com uma amostra aleatória simples de tamanho $n$!!! 

O Quadro \@ref(tab:tabepa) apresenta efeitos de plano amostral sob ACS de acordo com os tamanhos dos conglomerados e do coeficiente de correlação intraclasse. 

\begin{array}{|c|c|c|}\hline
\textbf{Tamanho do} & \rho=0,01 & \rho=0,05 & \rho=0,1 & \rho=0,2 & \rho=0,3 & \rho=0,5
\\ \textbf{Conglomerado} &  
\\\hline 2 & 1 & 1 & 1 & 1 & 1 & 2
\\\hline 5 & 1 & 1 & 1  & 2 & 2 & 3
\\\hline 11 & 1 & 2 & 2 & 3 & 4 & 6
\\\hline 21 & 1 & 2 & 3 & 5 & 7 & 11
\\\hline 31 & 1 & 3 & 4 & 7 & 10 & 16
\\\hline 51 & 2 & 4 & 6 & 11 & 16 & 26
\\\hline 101 & 2 & 6 & 11 & 21 & 31 & 51
\\\hline 201 & 3 & 11 & 21 & 41 & 61 & 101
\\\hline 301 & 4 & 16 & 31 & 61 & 91 & 151
\\\hline 501 & 6 & 26 & 51 & 101 & 151 & 251
\\\hline \end{array}

Observe que com o aumento do tamanho do conglomerado, como aumenta a perda de precisão da ACS em relação à AAS e para conglomerados maiores a medida que aumenta o coeficiente de correlação intraclasse diminui a eficiência da ACS.  


## Amostragem conglomerada com probabilidade proporcional ao tamanho (PPT) em um estágio

A ocorrência de variabilidade nos tamanhos dos conglomerados causa acentuda perda de precisão nos estimadores naturais com amostragem de conglomerados em um estágio. 

A amostragem conglomerada com probabilidade proporcional ao tamanho (PPT) em um estágio (AC1PPT) se caracteriza por: 

1. Ser útil para controlar os efeitos da variação nos tamanhos dos conglomerados.

2. Ser adotada na etapa de seleção da amostra, enquanto que estimadores tipo razão podem ser considerados na etapa de estimação.

3. Selecionar conglomerados com probabilidades proporcionais ao seu tamanho (número de unidades subordinadas ou outra medida de tamanho). 


### Estimadores do total com AC1PPT

A seguir, o estimador não viciado do total $Y$ com AC1PPT, no caso de PPT com reposição. 

\begin{equation}
\displaystyle \widehat Y_{PPTC}= \frac{1}{n}\sum_{k=1}^n \frac{Y_{i_k}}{p_{i_k}} \,\,(\#eq:eqcong19) 
\end{equation}

onde: 

$p_{i_k}$ é probabilidade de seleção associada ao conglomerado $i$ selecionado no sorteio $k$; 

$p_{i_k}$ é igual a algum dos $p_i=M_i/M_0$ $(i=1,2,\dots,N)$.

O estimador não viciado do total $Y$ com AC1PPT, no caso de PPT sem reposição é dado por:  

\begin{equation}
\displaystyle \widehat Y_{PPT}= \displaystyle \sum_{i \in a} \frac{Y_i}{\pi_i} \,\,(\#eq:eqcong20) 
\end{equation}

sendo: 

$\pi_i$ a probabilidade de inclusão do conglomerado $i$ na amostra. 

As respectivas variâncias de $\widehat Y_{PPTC}$ e $\widehat Y_{PPT}$ são dadas por: 

\begin{equation}
\displaystyle V(\widehat Y_{PPTC})= \frac{1}{N}\left(\sum_{k=1}^N \frac{Y_{i_k}^2}{p_{i_k}}-{Y^2}\right) \,\,(\#eq:eqcong21) 
\end{equation}

\begin{equation}
\displaystyle V(\widehat Y_{PPT})= \displaystyle \sum_{i=1}^N \frac{(1-\pi_i)}{\pi_i}Y_i^2 +\displaystyle\sum_{i=1}^N\sum_{j \ne i}^N\frac{(\pi_{ij}-\pi_i\pi_j)}{\pi_i\pi_j}Y_i Y_j \,\,(\#eq:eqcong22) 
\end{equation}

Os respectivos estimadores das variâncias de $\widehat Y_{PPTC}$ e $\widehat Y_{PPT}$ são dados por: 

\begin{equation}
\displaystyle \widehat V(\widehat Y_{PPTC})=\displaystyle \frac{1}{n(n-1)}\sum_{k=1}^n \left(\frac{Y_{i_k}}{p_{i_k}}-\widehat Y_{PPTC}\right)^2 \,\,(\#eq:eqcong23) 
\end{equation}

\begin{equation}
\displaystyle \widehat V(\widehat Y_{PPT})= \displaystyle \sum_{i=1}^n \frac{(1-\pi_i)}{\pi_i}Y_i^2 +\displaystyle\sum_{i=1}^n\sum_{j \ne i}^n\frac{(\pi_{ij}-\pi_i\pi_j)}{\pi_i\pi_j}Y_i Y_j \,\,(\#eq:eqcong24) 
\end{equation}

**Notas:**

a) $\widehat Y_{PPTC}$ é *mais preciso* que o estimador não viciado do total $\widehat Y$ com ACS, quando as médias dos conglomerados não são relacionadas com os tamanhos dos conglomerados.

b) $\widehat Y_{PPTC}$ *não se beneficia* do fator de correção de população finita.

c) Métodos para amostragem de conglomerados com *PPT sem reposição* estão disponíveis e podem ser usados em lugar de PPTC.

d) Para planos AC1PPT, os tamanhos precisam ser conhecidos exatamente para cada conglomerado da população, antes de selecionar a amostra. Caso contrário, podem ser usadas medidas aproximadas de tamanho.

e) $\widehat Y_{PPTC}$ tem desempenho similar ao estimador de razão do total, $\widehat Y_R$, sob ACS. Quando não for feita amostragem PPT de conglomerados, usar sempre que possível.

f) $\widehat Y_{PPTC}$ possui propriedades exatas (não viciado, variância, estimador não viciado de variância) que valem também para amostras pequenas.


## Amostragem conglomerada em dois estágios (AC2)

O plano amostral de conglomerados em dois estágios (AC2) se caracteriza pela seleção de uma amostra de conglomerados com subamostragem, assim definida: 

*Estágio 1*: Selecione amostra $a$ de $n$ UPAs (conglomerados).

*Estágio 2*: Para cada UPA $i$ da amostra de primeiro estágio, selecione amostra $s_i$ de $m_i$ unidades secundárias das $M_i$ unidades existentes nessa UPA.

A amostra completa de unidades selecionadas é dada por: $s = s_{i_1}\cup s_{i_2}\cup\dots\cup s_{i_n}= \bigcup_{k=1}^{n}s_{i_k}$

O tamanho total da amostra é $m_0= \displaystyle\sum_{i \in a} m_i$.

As principais razões para adotar Amostragem Conglomerada em dois estágios são as seguintes: 

1) Geralmente não é prático pesquisar todas as unidades nos conglomerados selecionados: *conglomerados* muito *grandes*, *carga de trabalho variável* por entrevistador, etc.

2) Constatou-se que a perda de precisão da AC1 em relação à AAS para amostras de mesmo tamanho é tanto maior quanto maior for o tamanho do conglomerado. A adoção de AC2 vem reduzir a influência do tamanho dos conglomerados na eficiência da AC1.

3) Se a variância dentro dos conglomerados for pequena, as médias por conglomerados $\overline Y_i$ podem ser bem estimadas por amostragem.

4) *Amostragem em dois estágios* é mais complexa, porém *mais flexível*. 


### Plano amostral 1 – AC2 com AAS nos 2 estágios

Trataremos agora do plano amostral AC2 com AAS nos 2 estágios de seleção, ou seja:   

*Estágio 1*: Selecione amostra de $n$ UPAs usando AAS.

*Estágio 2*: Para cada UPA $i$ da amostra de primeiro estágio, selecione $m_i$ unidades secundárias das $M_i$ unidades existentes usando AAS.

Para esse plano, a probabilidade de inclusão da unidade $j$ da UPA $i$ é dada por:

\begin{equation}
\pi_{ij}=P(i \in a, j\in s)= P(i \in a)\times P(j \in s|i \in a) = \frac{n}{N}\times \frac{m_i}{M_i}\,\,(\#eq:eqcong25) 
\end{equation}

### Planos amostrais equiponderados

Planos amostrais são mais simples quando as probabilidades de inclusão são constantes, isto é, para quaisquer $\pi_{ij}=f=m_0/M_0 \,\,\forall i$ e $j$. Nestas condições o plano amostral é dito *equiponderado* ou *autoponderado*.

Com o plano amostral 1, isto pode ser conseguido tomando $m_i\propto M_i$.

Uma desvantagem importante desse tipo de plano seria a geração de *cargas de trabalho desiguais* por UPA ou por entrevistador, caso cada UPA seja alocada a um só entrevistador.


### Estimação sob AC2

O plano amostral compreende agora *dois estágios de seleção*.

Para encontrar médias e variâncias de estimadores, médias sobre todas as possíveis amostras sob o plano amostral devem ser calculadas.

Isto requer considerar todas as possíveis amostras no primeiro estágio, e todas as possíveis amostras no segundo estágio, dentro de cada amostra de UPAs do primeiro estágio.

Tudo fica mais fácil se usarmos os seguintes resultados ([@Cochran1977], p. 275 equação 10.1 e p.276, equação 10.2, respectivamente) 

\begin{equation}
E[\widehat\theta]=E_1[E_2(\widehat\theta)]\,\,(\#eq:eqcong26) 
\end{equation}

\begin{equation}
V[\widehat\theta]=V_1[E_2(\widehat\theta)]+ E_1[V_2(\widehat\theta)]\,\,(\#eq:eqcong27) 
\end{equation}

$E_2$, $V_2$ denotam, respectivamente,  média e variância sobre todas as possíveis amostras de unidades dentro de um conjunto fixado de UPAs (estágio 2);

$E_1$, $V_1$ denotam, respectivamente, média e variância sobre todas as possíveis amostras de UPAs (estágio 1).

$\widehat \theta$ é algum estimador para um parâmetro $\theta$. 

Resultados similares podem ser estendidos para planos em três ou mais estágios ([@Cochran1977], seção 10.8).


#### Estimador de Horvitz-Thompson do total $Y$

Um estimador não viciado do total $Y$ é dado por:

\begin{equation}
\widehat Y_{HT}=\displaystyle \sum_{ i \in a} \frac{\widehat Y_i}{\pi_i} =\sum_ {i \in a}\frac{1}{\pi_i}\sum_{j \in s_i} \frac {y_{ij}}{\pi_{j|i}} =\sum_{i \in a}\sum_{j \in s_i} w_{ij}^{HT}y_{ij} \,\,(\#eq:eqcong28) 
\end{equation}

$\pi_i$ é a probabilidade de inclusão da UPA $i$;

$s_i$ é a amostra de unidades selecionadas dentro da UPA $i$;

$\widehat Y_i=\displaystyle \sum_{j \in s_i}\frac{y_{ij}}{\pi_{j|i}}$ é um estimador $HT$ do total $Y_i$ da UPA $i$;

$\pi_{j|i}=P(j \in s_i|i \in a)$ é a probabilidade de inclusão da unidade $j$ dado que a UPA $i$ está na amostra $a$;

$w_{ij}^{HT}=\pi_{ij}^{-1}=\pi_i^{-1}\pi_{j|i}^{-1}$ é o peso associado à unidade $j$ da UPA $i$.

A variância de $\widehat Y_{HT}$ com AC2 é dada por: 

\begin{eqnarray}
V_{AC2}\left(\widehat Y_{HT}\right)&=& V_1\left[E_2\left(\displaystyle \sum_{i \in a}\frac{\widehat Y_i}{\pi_i}\right)\right]+E_1\left[V_2\left(\sum_{i \in a}\frac{\widehat Y_i}{\pi_i}\right)\right]\\
&=& V_1\left[\displaystyle \sum_{i \in U}\delta_iE_2\left(\widehat Y_i\right)\big/\pi_i\right]+E_1\left[\sum_{i \in U}\delta_iV_2\left({\widehat Y_i}\right)\big/{\pi_i}^2\right]\\
&=&V_1\left(\displaystyle \sum_{i \in a}{Y_i}\big/\pi_i\right)+\sum_{i \in U} V_2\left(\widehat Y_i\right)\big/\pi_i\\
&=&V_{UPA}+V_{USA}
\,\,(\#eq:eqcong29) 
\end{eqnarray}

$V_{UPA}$ é a componente de variância de $\widehat Y_{HT}$ proveniente da amostragem de UPAs (estágio 1), isto é, variância caso amostragem de conglomerados em um estágio fosse usada (sem fazer subamostragem no segundo estágio);

$V_{USA}$ é a componente de variância proveniente da amostragem de USAs (amostragem no estágio 2).

De acordo com ([@Cochran1977], equação 11.21) o  estimador não viciado do total sob o Plano 1 é dado por: 

\begin{equation}
\widehat Y_{Plano1}= \displaystyle \frac{N}{n}\sum_{i \in a}\widehat Y_i\,\,(\#eq:eqcong30) 
\end{equation} 

com $\widehat Y_i=\displaystyle \frac{M_i}{m_i}\sum_{j \in s_i}y_{ij}$ para toda UPA $i$. 

De acordo com ([@Cochran1977], equação 11.22) a variância do estimador não viciado do total sob o Plano 1 é dada por: 

\begin{equation}
V\left(\widehat Y_{Plano1}\right)= \displaystyle N^2\left(\frac{1}{n}-\frac{1}{N}\right)\frac{1}{N-1}\sum_{i=1}^N\left(Y_i-\overline Y_C\right)^2 + \frac{N}{n}\sum_{i=1}^N M_i^2\left(\frac{1}{m_i}-\frac{1}{M_i}\right)S_i^2 \,\,(\#eq:eqcong31) 
\end{equation} 

onde as parcelas do 2º membro representam as "componentes" da variância devidas ao 1º e ao 2º estágios de seleção, respectivamente. 

sendo: $S_i^2= \displaystyle \frac{1}{M_i - 1}\sum_{j=1}^{M_i}\left(y_{ij}-\overline Y_i\right)^2$ a variância dentro da UPA $i$.

Note-se que: 

i) Se $n=N$ então, a 1ª componente da variância é nula, ou seja: 

\begin{equation}
V\left(\widehat Y_{Plano1}\right)=\frac{N}{n}\sum_{i=1}^N M_i^2\left(\frac{1}{m_i}-\frac{1}{M_i}\right)S_i^2= V_{AES}\left(\widehat Y_{AES}\right) 
\end{equation} 
e este plano equivale ao de uma amostra estratificada. 

ii) Se $n_i=N_i\,\,\forall i=1,2,\dots,n)$ então, a 2ª componente da variância é nula, ou seja:

\begin{equation}
V\left(\widehat Y_{Plano1}\right)= \displaystyle N^2\left(\frac{1}{n}-\frac{1}{N}\right)\frac{1}{N-1}\sum_{i=1}^N\left(Y_i-\overline Y_C\right)^2 = V\left(\widehat Y_{AC1}\right) 
\end{equation} 

e este plano amostral equivale ao de uma amostra de conglomerados em um estágio.

De acordo com ([@Cochran1977], equação 11.24) o estimador da variância do estimador não viciado do total sob o Plano 1 é dado por: 

\begin{equation}
\widehat V\left(\widehat Y_{Plano1}\right)= \displaystyle N^2\left(\frac{1}{n}-\frac{1}{N}\right)\frac{1}{n-1}\sum_{i \in a} \left(\widehat Y_i-\overline y_C\right)^2 + \frac{N}{n}\sum_{i \in a} M_i^2\left(\frac{1}{m_i}-\frac{1}{M_i}\right)\widehat S_i^2 \,\,(\#eq:eqcong32) \end{equation} 

onde: 
$\overline y_C=\displaystyle \frac{1}{n}\sum_{i \in a}\widehat Y_i$ estima a média por conglomerado $\overline Y_C$; e

$\widehat S_i^2= \displaystyle \frac{1}{m_i-1}\sum_{j \in s_i}\left(y_{ij}-\overline y_i\right)^2$ estima a variância dentro da UPA $i$.


#### Estimador de Horvitz-Thompson da média

Um estimador não viciado da média por unidade $\overline Y$ é dado por:

\begin{equation}
\overline y_N=\widehat Y_{HT}/M_0=\left(\displaystyle \sum_{ i \in a} \frac{\widehat Y_i}{\pi_i}\right)\Big/M_0 \,\,(\#eq:eqcong33) 
\end{equation}

Um estimador não viciado da média por unidade sob o Plano 1 é dado por:

\begin{equation}
\overline y_{Plano1}=\frac{\widehat Y_{HT}}{M_0}= \displaystyle \frac{N}{nM_0}\sum_{i \in a}\widehat Y_i=\displaystyle \frac{N}{nM_0}\sum_{i \in a}\displaystyle \frac{M_i}{m_i}\sum_{j \in s_i}y_{ij}\,\,(\#eq:eqcong34) 
\end{equation} 

A variância do estimador não viciado da média por unidade sob o Plano 1 é dada por: 

\begin{equation}
V\left(\overline y_{Plano1}\right)= \frac {1}{M_0^2} V\left(\widehat Y_{Plano1}\right) \,\,(\#eq:eqcong35) 
\end{equation} 


O estimador da variância do estimador não viciado da média por unidade sob o Plano 1 é dada por: 

\begin{equation}
\widehat V\left(\overline y_{Plano1}\right)= \frac {1}{M_0^2} \widehat V\left(\widehat Y_{Plano1}\right) \,\,(\#eq:eqcong36) 
\end{equation} 


#### Estimador de razão do total $Y$

Se $M_0$ for conhecido, um estimador de razão para estimar o total $Y$ é dado por:

\begin{equation}
\widehat Y_R=M_0\times\left(\displaystyle \sum_{i \in a} \frac{\widehat Y_i}{\pi_i}\right)\Big/\left(\displaystyle \sum_{i \in a} \frac{M_i}{\pi_i}\right)\,\,(\#eq:eqcong37) 
\end{equation}

Um estimador de razão da média por unidade é dado por: 

\begin{equation}
\overline y_R=\left(\displaystyle \sum_{i \in a} \frac{\widehat Y_i}{\pi_i}\right)\Big/\left(\displaystyle \sum_{i \in a} \frac{M_i}{\pi_i}\right)\,\,(\#eq:eqcong38) 
\end{equation}

Este estimador de razão da média pode ser calculado mesmo quando $M_0$ for desconhecido. 

### Plano amostral 2 – AC2 com PPT com reposição no primeiro estágio e AAS no segundo estágio (AC2PPTC)

Trataremos agora do plano amostral AC2 com PPT com reposição no primeiro estágio de seleção e AAS no segundo estágio, ou seja:

*Estágio 1*: Selecione amostra de $n$ UPAs usando probabilidades proporcionais a uma medida de tamanho $x_i$;

*Estágio 2*: Para cada UPA $i$ da amostra de primeiro estágio, selecione $m_i$ unidades secundárias das $M_i$ unidades existentes usando AAS. 

Para o Plano amostral 2, agora denominado Plano 2, a probabilidade de inclusão da unidade $j$ da UPA $i$ é dada por:

\begin{equation} 
\displaystyle \pi_{ij}= P(i \in a, j\in s) = P(i \in a) \times P(j \in s|i \in a) = n \frac{x_i}{X}\times\frac{m_i}{M_i}\,\,(\#eq:eqcong39) 
\end{equation}

Este plano será equiponderado (ou autoponderado) quando:

a) $\displaystyle m_i\propto \frac{M_i}{x_i}$ ; ou

b) $x_i=M_i$ e $m_i=\overline m$. Esta é a opção mais usada na prática.

A seguir, a estimação no Plano 2, considerando que no estágio 1 a seleção da amostra de $n$ UPAs foi feita usando probabilidades proporcionais ao tamanho da UPA $M_i$. 

De acordo com ([@Cochran1977], equação 11.31) um  estimador não viciado do total sob o Plano 2 é dado por: 

\begin{equation} 
\widehat Y_{Plano2}= \displaystyle \frac{1}{n} \sum_{k=1}^{n} \frac {\widehat Y_{i_k}}{p_{i_k}}= \frac{1}{n} \sum_{i \in a} \frac {\widehat Y_i}{p_i}\,\,(\#eq:eqcong40) 
\end{equation}

onde: 
$p_{i_k}$ é probabilidade de seleção associada à UPA $i$ selecionada no sorteio $k$; 

$p_i=M_i/M_0\,\,\forall i=1,2,\dots,N$;  $p_{i_k}$ é igual a algum dos $p_i$ $(i=1,2,\dots,N)$; e

$\widehat Y_{i_k}=\displaystyle \frac{M_i}{m_i}\sum_{j \in s_i} y_{ij}= \widehat Y_i$ é o total estimado para a UPA $i$ selecionada no sorteio $k$.

A variância de $\widehat Y_{Plano2}$ sob o Plano 2, conforme ([@Cochran1977], equação 11.32), é dada por: 
 
\begin{eqnarray}
V \left(\widehat Y_{Plano2} \right)&=& V_1 \left[E_2 
\left(\widehat Y_{Plano2}\right)\right]+E_1\left[V_2\left(\widehat Y_{Plano2}\right)\right]\\
&=& V_1\left[E_2\left(\displaystyle \frac{1}{n}\sum_{i \in a}\frac{\widehat Y_i}{p_i}\right)\right]+E_1\left[V_2\left(\frac{1}{n}\sum_{i \in a} \frac{\widehat Y_i}{p_i}\right)\right]\\
&=& V_1\left[\frac{1}{n}\displaystyle \sum_{i \in a}\frac{E_2 \left(\widehat Y_i\right)}{p_i}\right]+E_1\left[\frac{1}{n^2}\sum_{i \in a} \frac{V_2 \left( \widehat Y_i\right)}{p_i^2}\right]\\
&=&V_1\left[\frac{1}{n}\displaystyle \sum_{i \in a}\frac{Y_i}{p_i}\right]+E_1\left[\frac{1}{n^2}\sum_{i \in a}\frac{1}{p_i^2}M_i^2\left(\frac{1}{m_i}-\frac{1}{M_i}\right)S_i^2\right]\\
&=& \frac{1}{n}\displaystyle \sum_{i \in U}\left(\frac{Y_i}{p_i}- Y\right)^2p_i+\frac{1}{n}\sum_{i \in U}\frac{1}{p_i}M_i^2\left(\frac{1}{m_i}-\frac{1}{M_i}\right)S_i^2
\,\,(\#eq:eqcong41) 
\end{eqnarray}

Um estimador da variância de $\widehat Y_{Plano2}$, de acordo com ([@Cochran1977], equação 11.35), é dado por: 
 
\begin{eqnarray}
\widehat V \left(\widehat Y_{Plano2} \right)= \frac{1}{n(n-1)}\displaystyle \sum_{i \in a}\left(\frac{M_i \overline y_i}{p_i}-\widehat Y_{Plano2} \right)^2
\,\,(\#eq:eqcong42) 
\end{eqnarray}


O Quadro \@ref(tab:tabcon1) apresenta um resumo da estimação do parâmetro do  total da variável $y$ sob os Planos 1 e 2 de AC2. 

\begin{array}{|c|c|}\hline
\textbf{Parâmetro} & \textbf{Estimador AC2}  
\\\hline Y& \widehat Y_{Plano1}= \displaystyle \frac{N}{n}\sum_{i \in a}\widehat Y_i 
\\& \widehat Y_{Plano2}= \displaystyle\frac{1}{n} \displaystyle\sum_{i \in a} \frac {\widehat Y_i}{p_i}

\\\hline V\left(\widehat Y_{Plano1}\right)= N^2\left(\frac{1}{n}-\frac{1}{N}\right)\frac{1}{N-1}\displaystyle\sum_{i=1}^N\left(Y_i-\overline Y_C\right)^2 & \widehat V\left(\widehat Y_{Plano1}\right)=  N^2\left(\frac{1}{n}-\frac{1}{N}\right)\frac{1}{n-1}\displaystyle\sum_{i \in a} \left(\widehat Y_i-\overline y_C\right)^2 

\\+ \frac{N}{n}\displaystyle\sum_{i=1}^N M_i^2\left(\frac{1}{m_i}-\frac{1}{M_i}\right)S_i^2&+ \frac{N}{n}\displaystyle\sum_{i \in a} M_i^2\left(\frac{1}{m_i}-\frac{1}{M_i}\right)\widehat S_i^2

\\\hline V \left(\widehat Y_{Plano2} \right)= \frac{1}{n}\displaystyle\sum_{i \in U}\left(\frac{Y_i}{p_i}- Y\right)^2p_i+\frac{1}{n}\displaystyle\sum_{i \in U}\frac{1}{p_i}M_i^2\left(\frac{1}{m_i}-\frac{1}{M_i}\right)S_i^2 &\widehat V \left(\widehat Y_{Plano2} \right)= \frac{1}{n(n-1)}\displaystyle \sum_{i \in a}\left(\frac{M_i \overline y_i}{p_i}-\widehat Y_{Plano2} \right)^2
\\

\\\hline \end{array}


### Plano amostral 3 – AC2 com PPT Poisson Sequencial no estágio 1 e AAS no estágio 2 (AC2PPPS)

Amostragem Conglomerada PPT Poisson Sequencial de UPAs, mais AAS de $m_i$ USAs nas UPAs selecionadas.

Um estimador não viciado do total $Y$ sob o Plano 3 é dado por: 

\begin{equation} 
\widehat Y_{Plano3}= \displaystyle\sum_{i \in a} \frac{\widehat Y_i}{np_i}\,\,(\#eq:eqcong43) 
\end{equation}

onde: 

$p_i=M_i/M_0\,\,\forall i=1,2,\dots,N$; e 

$\widehat Y_i=\displaystyle \frac{M_i}{m_i}\sum_{j \in s_i} y_{ij}$ para toda UPA $i$ selecionada.

A variância de $\widehat Y_{Plano3}$ é dada por: 

\begin{eqnarray}
V \left(\widehat Y_{Plano3} \right)&=& V_1 \left[E_2 
\left(\widehat Y_{Plano3}\right)\right]+E_1\left[V_2\left(\widehat Y_{Plano3}\right)\right]\\
&=& V_1\left[E_2\left(\displaystyle\sum_{i \in a}\frac{\widehat Y_i}{np_i}\right)\right]+E_1\left[V_2\left(\sum_{i \in a} \frac{\widehat Y_i}{np_i}\right)\right]\\
&=& V_1\left[\displaystyle \sum_{i \in a}\frac{E_2 \left(\widehat Y_i\right)}{np_i}\right]+E_1\left[\sum_{i \in a} \frac{V_2 \left(\widehat Y_i\right)}{{n^2}p_i^2}\right]\\
&=&V_1\left[\displaystyle \sum_{i \in a}\frac{Y_i}{np_i}\right]+E_1\left[\sum_{i \in a}\frac{1}{{n^2}p_i^2}M_i^2\left(\frac{1}{m_i}-\frac{1}{M_i}\right)S_i^2\right]\\
&=& \frac{1}{n}\frac{N}{N-1}\displaystyle \sum_{i \in U}\left(\frac{Y_i}{p_i}- Y\right)^2(1-np_i)p_i+\sum_{i \in U}\frac{1}{np_i}M_i^2\left(\frac{1}{m_i}-\frac{1}{M_i}\right)S_i^2
\,\,(\#eq:eqcong44) 
\end{eqnarray}


### Ideias básicas na escolha de unidades compostas 

A seguir são apresentadas algumas ideias básicas a serem adotadas na escolha de unidades compostas em termos da definição das unidades e do plano amostral, das medidas de tamanho e informação auxiliar, da escolha dos tamanhos das UPAs e do número de unidades a serem selecionadas em cada estágio. 

Definição das unidades e do plano amostral no caso de pesquisas domiciliares:

a) Usar unidades claramente definidas: mapeamento preciso, para evitar omissões e dupla contagem.

b) Boa cobertura para evitar omissão de unidades.

c) Procedimentos precisos para operações de listagem ou cadastramento de unidades, se necessário.

d) Plano amostral deve ser simples de implementar.

e) Preferir cadastros ou listas disponíveis em computador.

Em termos de medidas de tamanho e informação auxiliar: 

f) Medidas de tamanho devem ser tão precisas quanto possível.

g) Informações auxiliares são necessárias para estratificar UPAs, para usar na estimação, etc.

h) UPAs menores geralmente apresentam menores custos de listagem e de deslocamento entre unidades. Porém UPAs menores são mais homogêneas e podem aumentar a variância.

Em termos da escolha dos tamanhos: 

i) Geralmente se adota UPAs do maior tamanho possível, tal que uma UPA possa ser coberta por apenas um entrevistador durante a operação de coleta.

j) UPAs de tamanhos parecidos reduzem a variância.

Em termos da escolha de $n$ e $m_i$:

k) Geralmente, utiliza-se uma das opções equiponderadas dos Planos 1 e 2, para manter a simplicidade.

Sob o Plano 1, precisa escolher: $f_1=n/N$, a fração amostral do primeiro estágio; e $f_{2i}=m_i/M_i$, as frações amostrais do segundo estágio;

Sob o Plano 2, precisa escolher: $f_1=n/N$ e $\overline m =$ (tamanho amostral fixo no segundo estágio, que considera que $x_i=M_i$).

l) Em cada caso, há dois “parâmetros” de planejamento a especificar.

Restrições orçamentárias geralmente permitem reduzir a escolha a apenas um “parâmetro”.

Algumas vezes, para o Plano 2, determinamos primeiro $\overline m$, a carga de trabalho por entrevistador em cada UPA.

Mas em geral, para tamanhos totais de amostra fixados, pode-se escolher entre:

- aumentar $n$ e reduzir $\overline m$, o que aumenta a precisão mas aumenta o custo, ou então;

- reduzir $n$ e aumentar $\overline m$, o que reduz a precisão mas também reduz o custo.

Um compromisso é necessário!

Um guia importante é considerar: 

\begin{equation} 
EPA(AC2;\overline y_R)\doteq 1+(\overline m-1) \rho\,\,(\#eq:eqcong45) 
\end{equation} 


### Determinando tamanhos de amostra com AC2PPT

*Passo 1*: Determine o tamanho amostral requerido para estimar a média populacional $\overline Y$ por uma AAS com a margem de erro aceitável $d$ especificada de comum acordo com o cliente:

\begin{equation} 
n_{AAS}=\frac{Nz_{\alpha/2}^2S_y^2}{Nd^2+z_{\alpha/2}^2S_y^2}\,\,(\#eq:eqcong46) \end{equation}

Mas note que $n_{AAS}$ é solução da seguinte equação:

\begin{equation} 
V_{AAS}(\overline y)=\left(\frac{1}{n}-\frac{1}{N}\right)S_y^2= \left(\frac{d}{z_{\alpha/2}}\right)^2\,\,(\#eq:eqcong47) \end{equation}

*Passo 2*: Note que: 

$EPA(AC2PPT;\overline y_W)=\displaystyle\frac{V_{AC2PPT}(\overline y_W)}{V_{AAS}(\overline y)}\doteq1+(\overline m -1) \rho$

Ver p. ex. Nascimento Silva & Moura (1986: p. 31).

Logo, segue-se que

\begin{equation} 
V_{AAS}(\overline y)=V_{AC2PPT}(\overline y_W)\big/EPA(AC2PPT;\overline y_W)\,\,(\#eq:eqcong48) \end{equation}

Então podemos escrever:

\begin{equation} 
\displaystyle\frac{V_{AC2PPT}(\overline y_W)}{EPA(AC2PPT;\overline y_W)}=\left(\frac{1}{n}-\frac{1}{N}\right)S_y^2\,\,(\#eq:eqcong49) \end{equation}

Daí segue-se que:

\begin{equation} 
\frac{1}{n}S_y^2= \frac{1}{N}S_y^2+\displaystyle\frac{V_{AC2PPT}(\overline y_W)}{EPA(AC2PPT;\overline y_W)}\,\, \Longrightarrow \end{equation}

\begin{equation} 
n=S_y^2\Big/\left(\frac{1}{N}S_y^2+\displaystyle\frac{V_{AC2PPT}(\overline y_W)}{EPA(AC2PPT;\overline y_W)}\,\right) \,\,\,\Longrightarrow \end{equation}

\begin{equation} 
n=NS_y^2\Big/\left(S_y^2+N\displaystyle\frac{V_{AC2PPT}(\overline y_W)}{EPA(AC2PPT;\overline y_W)}\,\right)\,\,\,(\#eq:eqcong50)
\end{equation}

Mas queremos com o plano AC2PPT obter a mesma margem de erro admissível $d$, logo segue que:

\begin{equation} 
V_{AC2PPT}(\overline y_W)=\left(\frac{d}{z_{\alpha/2}}^2\right) \,\,(\#eq:eqcong51)
\end{equation}

Levando esta equação na anterior, segue-se que:

\begin{equation} 
n=NS_y^2\Big/\left(S_y^2+\displaystyle\frac{Nd^2}{z_{\alpha/2}^2EPA(AC2PPT;\overline y_W)}\,\right)
\end{equation}

Que leva à seguinte solução:

\begin{equation} 
n_{AC2PPT}=\displaystyle\frac{EPA(AC2PPT;\overline y_W)Nz_{\alpha/2}^2S_y^2}{Nd^2+EPA(AC2PPT;\overline y_W)z_{\alpha/2}^2S_y^2}\,\,\,\Longrightarrow
\end{equation}

\begin{equation} 
n_{AC2PPT}\doteq n_{AAS}\times EPA(AC2PPT;\overline y_W)\,\,(\#eq:eqcong52)
\end{equation}

Ou alternativamente: 

\begin{equation} 
n_{AC2PPT}\doteq n_{AAS}\times [1+(\overline m-1)\rho]\,\,(\#eq:eqcong53)
\end{equation}
