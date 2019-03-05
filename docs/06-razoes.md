# Estimação de uma Razão Populacional 

## Razões Populacionais como Parâmetros de Interesse

Muitas vezes na prática de pesquisas por amostragem, o *parâmetro* populacional de interesse é uma razão entre duas variáveis que varia de unidade para unidade da população, podendo ser uma *razão de totais (ou médias)*. 

Alguns exemplos, que podem ser citados: a densidade de pessoas por cômodo em domicílios (razão entre o número de pessoas por domicílio e o número de cômodos por domicílio), a razão entre os gastos das famílias com alimentação e a renda das famílias, a produtividade da lavoura de certo produto (razão entre a quantidade colhida de certo produto pela área plantada), o salário médio dos trabalhadores da indústria (razão entre o salários dos trabalhadores da indústria e o número de trabalhadores da indústria).   

No caso da densidade de pessoas por cômodo em domicílios tem-se o parâmetro razão na população, $R$, de forma que: 
\begin{equation}
\frac{\textrm {Número de pessoas por domicílio}}{\textrm{Número de cômodos por domicílio}} = \frac{\sum_{i\in U}y_i}{\sum_{i\in U}x_i}=\frac{Y}{X}=\frac{\overline{Y}}{\overline{X}}=R (\#eq:eqraz1)
\end{equation}
 
## Razão de Médias versus Média de Razões

Um cuidado importante aqui é entender a diferença de parâmetros de interesse. 

O parâmetro $R$ não é a média $\left(\overline{R}= \sum_{i\in U}{R_i}/{N}\right)$  das *razões por unidade* $\left(R_i=y_i/x_i\right)$. 

**Exemplo 5.1:** Considere as densidades de habitantes por unidade da federação conforme o Censo 2010.

Neste exemplo, vemos a discrepância grande que pode ocorrer entre as duas quantidades, quando os valores de $R_i$  são muito dispersos.


$$\begin{array}{|l|r|}\hline
\textrm{Unidade da Federação} & \textrm{Densidade (Hab/}Km^2) \\\hline \textrm{Rondônia} & 6,6 \\\hline \textrm{Acre} & 4,5 \\\hline \textrm{Amazonas} & 2,2\\\hline \textrm{Roraima} & 2,0\\\hline \textrm{Pará} & 6,1\\\hline \textrm{Amapá} & 4,7\\\hline \textrm{Tocantins} & 5,0\\\hline \textrm{Maranhão} & 19,8\\\hline \textrm{Piauí} & 12,4\\\hline \textrm{Ceará} & 56,8\\\hline \textrm{Rio Grande do Norte} & 60,0\\\hline \textrm{Paraíba} & 66,7\\\hline \textrm{Pernambuco} & 89,6\\\hline \textrm{Alagoas} & 112,3\\\hline \textrm{Sergipe} & 94,4\\\hline \textrm{Bahia} & 24,8\\\hline \textrm{Minas Gerais} & 33,4\\\hline \textrm{Espírito Santo} & 76,3\\\hline \textrm{Rio de Janeiro} & 365,2\\\hline \textrm{São Paulo} & 166,3\\\hline \textrm{Paraná} & 52,4\\\hline \textrm{Santa Catarina} & 65,3\\\hline \textrm{Rio Grande do Sul} & 39,8\\\hline \textrm{Mato Grosso do Sul} & 6,9\\\hline \textrm{Mato Grosso} & 3,4\\\hline \textrm{Goiás} & 17,7\\\hline \textrm{Distrito Federal} & 444,1\\\hline \textbf{Brasil (Média das razões)} & \textbf{68,1}\\\hline \textbf{Brasil (Razão das médias)} & \textbf{22,4} \\\hline \end{array}$$

$$\begin{array}{l} \textrm{Fonte: IBGE, Censo Demográfico 2010.} &\\ \end{array}$$

## Estimação de Razões

Para estimar razões de totais (ou médias) como R, o estimador “natural” é a *razão dos estimadores Horwitz-Thompson de total*:

 \begin{equation}
 \widehat{R}=\frac{\sum_{i\in s}w_iy_i}{\sum_{i\in s}w_ix_i}=\frac{\widehat{Y}_{HT}}{\widehat{X}_{HT}}(\#eq:eqraz2)
\end{equation}

Sob AAS, este estimador simplifica para:

\begin{equation}
\widehat{R}=\frac{\sum_{i\in s}y_i}{\sum_{i\in s}x_i}=\frac{\overline{y}}{\overline{x}}.(\#eq:eqraz3)
\end{equation}

**Notas**

1.	Tanto o numerador como o denominador do estimador $\widehat{R}$ da razão $R$ podem variar com a amostra selecionada, $s$.

2.	Apesar de termos estimadores não viciados para as médias populacionais $\overline{Y}$ e $\overline{X}$, em geral,  $E(Z/W)\ne E(Z)E(W)$, e portanto $E(\widehat{R})= E({\overline{y}}/{\overline {x}}) \ne E(\overline{y})/E(\overline{x})= \overline{Y}/\overline{X}=R$.

3.	Logo $\widehat{R}$  é um estimador viciado de $R$.

4.	O vício de $\widehat{R}$  é pequeno e chamado de “vício técnico”, para distingui-lo de outros vícios tais como não resposta e outros. Para n *grande*, este *vício é desprezível*.

## Analisando o Vício do Estimador da Razão sob AAS

Sejam $\Delta y=\overline{y} - \overline{Y}$, e  $\Delta x=\overline{x} - \overline{X}$ os erros das estimativas de médias populacionais para as variáveis $x$ e $y$. 

Lembrando que $DP_{AAS}(\overline{y})=\sqrt{(1-f)}S_y/\sqrt{n}$, segue-se que $\Delta y$ e $\Delta x$  são de ordem $n^{-1/2}$ (a ordem de grandeza do desvio padrão). 

Portanto, 

$\frac{\overline{y}}{\overline{x}}=\frac{\overline{Y}+\Delta{y}}{\overline{x}+\Delta{x}}=\frac{\overline{Y}}{\overline{X}}\left(1+\frac{\Delta{y}}{Y}\right)\left(1+\frac{\Delta{x}}{X}\right)^{-1}$

Desenvolvendo-se o fator $\left(1+\frac{\Delta{x}}{X}\right)^{-1}$ como série de potências de $\Delta{x}$, tem-se: 
$\frac{\overline{y}}{\overline{x}}=\frac{\overline{Y}}{\overline{X}}\left(1+\frac{\Delta{y}}{Y}\right)\left(1+\frac{\Delta{x}}{X}\right)^{-1}=\frac{\overline{Y}}{\overline{X}}\left(1+\frac{\Delta{y}}{Y}\right)\left[1-\frac{\Delta{x}}{X}+\left(\frac{\Delta{x}}{X}\right)^2+´´´\right]=\frac{\overline{Y}}{\overline{X}}\left(1+\frac{\Delta{y}}{Y}-\frac{\Delta{x}}{X}+\textrm{termos em} \,\Delta^2\right)$.

Logo:

$E(\widehat{R})=E(\overline{y}/\overline{x})=R\left[1+\frac{E(\Delta{y})}{\overline{Y}}-\frac{E(\Delta{x})}{\overline{X}}+\textrm{termos em}\,\, E(\Delta^2)\right]= R +\textrm{termos em ordem}\,\,n^{-1}$

porque $E(\Delta{y})=E(\Delta{x})=0$.

Assim, o vício é de ordem $n^{-1}$ e fica menor à medida que o tamanho da amostra cresce, daí o nome de *vício técnico*.

Vícios desse tipo são geralmente desprezados na prática, a menos que se tenha amostras *muito pequenas*.

## Erro Quadrático Médio (EQM) de $\widehat{R}$ sob AAS

Como  $\widehat{R}$  tem um pequeno vício técnico, avaliamos seu *Erro Quadrático Médio (EQM)* sob AAS, ao invés da variância:

\begin{eqnarray}EQM_{AAS}(\widehat{R}) & = & E_{AAS}\left(\widehat{R}-R\right)^2 \\ &=& E_{AAS}\left[R^2\left(\frac{\Delta{y}}{\overline{Y}}-\frac{\Delta{x}}{\overline{X}}\right)^2\right]+\textrm{termos em} \,\Delta^3 \\ &\cong & R^2 E_{AAS}\left(\frac{\overline{y}-\overline{Y}}{\overline{Y}}-\frac{\overline{x}-\overline{X}}{\overline{X}}\right)^2 \\ &=& \frac{R^2}{\overline{Y}^2}E_{AAS}(\overline{y}-R\overline{x})^2\\ &=& \frac{(1-f)}{n\overline{X}^2}\frac{1}{(N-1)}\displaystyle\sum_{i\in U}\left(y_i-Rx_i\right)^2(\#eq:eqraz4)\end{eqnarray}.


Um estimador desse EQM que tem vício de ordem $n^{-1}$ é: 

\begin{equation}
\widehat{V}_{AAS}(\widehat{R})=\frac{(1-f)}{n\overline{x}^2}\frac{1}{(n-1)}\displaystyle\sum_{i\in s}\left(y_i-\widehat{R}x_i\right)^2 (\#eq:eqraz5)
\end{equation}
Veja [@Cochran1977].

Portanto, sob AAS temos a seguinte estrutura para estimação de razões:

(1)	$\widehat{R}$ estima $R$ e $E_{AAS}(\widehat{R})=R+O(n^{-1})$;

(2)	$EQM_{AAS}(\widehat{R})=\frac{(1-f)}{n\overline{X}^2}\frac{\displaystyle\sum_{i\in U}\left(y_i-Rx_i\right)^2}{N-1}+ O\left(n^{-3/2}\right)$ 

(3) $\widehat{V}_{AAS}(\widehat{R})=\frac{(1-f)}{n\overline{x}^2}\frac{1}{(n-1)}\displaystyle\sum_{i\in s}\left(y_i-\widehat{R}x_i\right)^2$

(4)	$\frac{\widehat{R}-R}{{\sqrt{\widehat{V}_{AAS}(\widehat{R})}}}\approx N(0;1)$  para $n$ grande.

## Exercícios

**Exercício 5.1:** Identifique e defina duas razões que você já tenha utilizado em seu trabalho.

**Exercício 5.2:** Estimando Razões e Médias de Razões

Considere a população de municípios brasileiros fornecida no arquivo MunicBR.xlsx. 

1.	Selecione uma AAS de $n=20$ municípios, e use esta amostra para estimar os seguintes parâmetros populacionais:

a.	Densidade habitacional média por $km^2$ no Brasil;

b.	Média da densidade habitacional por $km^2$ por município.

2.	Para cada uma das estimativas acima:

a.	Estime o erro padrão e o coeficiente de variação; 

b.	Compare com os correspondentes parâmetros populacionais.

