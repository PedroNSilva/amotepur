
# Amostragem Inversa

## Introdução

Na amostragem probabilística usualmente são selecionadas $n$ unidades, que deverão compor a amostra, de uma população ou cadastro de seleção composto de $N$ unidades populacionais, $n<N$.

Essas unidades selecionadas para a amostra serão identificadas e as variáveis de interesse serão medidas utilizando-se a ferramenta adequada de acordo com as característicasda pesquisa em questão. No caso de pesquisas do tipo socioeconômicas, frequentemente são utilizados questionários que a ser respondidos por algum representante da unidade selecionada, que pode ser um domicílio, um estabelecimento industrial, uma escola, etc. Em casos como um processo de controle de qualidade por amostragem poderão ser utilizados instrumentos de medida para conferência das dimensões de uma peça que está sendo fabricada em série ou mesmo a realização de um ensaio específico para testar alguma característica desejável. Muitas vezes esses ensaios podem ser destrutivos e, portanto, este é um exemplo clássico onde a utilização de uma amostra se impõe pela impossibilidade de se testar todas as peças que estiverem sendo fabricadas.

Um dos problemas que podem ocorrer numa investigação por amostragem é a impossibilidade de se entrevistar ou medir todas as $n$ unidades selecionadas para a mostra. Isso pode ocorrer por vários motivos como a dificuldade de se localizar a unidade no campo; a mudança das características da unidade excluindo a mesma do escopo da pesquisa, como, por exemplo, um endereço onde havia um domicílio selecionado que no momento da pesquisa passou a ser uma unidade comercial; a seleção de um domicílio de uso ocasional, como uma casa de veraneio; ausência da pessoa que deveria ser o informante; a simples recusa do informante responder total ou parcialmente a pesquisa. Todas essas questões implicam em uma redução no tamanho da amostra e aumento da imprecisão das estimativas geradas.

Muitas das causas que levam a essa redução da amostra talvez possam ser prevenidas e evitadas por uma atualização mais criteriosa na preparação do cadastro de seleção da amostra, porém é sabido que um cadastro é um ente dinâmico e as mudanças que podem ocorrer no mesmo estão fora do controle do amostrista. Alterações podem ocorrer no momento da realização da pesquisa.

Existem estratégias para tentar contornar esse problema como, por exemplo, o superdimensionamento da amostra. Principalmente em pesquisas que são repetidas no tempo ou pesquisas com características semelhantes a outras já realizadas, pode-se ter uma estimativa das taxas de perda de unidades amostrais que podem ser úteis para orientar o  dimensionamento de uma amostra robusta o suficiente para que, mesmo sofrendo perdas na coleta, possa estimar os parâmetros de interesse com um nível adequado de precisão. Se as perdas forem menores do que o esperado, as estimativas poderão ser até mais precisas o que é até positivo do ponto de vista estatístico.

Outro problema desse tipo de abordagem é quando se está pesquisando eventos de ocorrência rara na população e no cadastro disponível para a seleção da amostra não existe nenhuma indicação sobre essa ocorência nas unidades populacionais. São exemplos desse tipo de pesquisa os estudos sobre determinadas doenças; problemas que podem atingir somente indivíduos de determinado sexo e/ou numa faixa etária restrita; atividades econômicas restritas a um número pequeno de estabelecimentos, etc. Nestes casos pode-se realizar uma etapa prévia de atualização cadastral, comunmente chamada de screening/varredura, procurando identificar na população aquelas unidades que tem, pelo menos idicativos, das características desejadas. Esse processo, porém, pode ser muito caro inviabilizando sua realização. Em pesquisas que utilizam amostragem de conglomerados o custo dessa opreação pode ser reduzido pela atualização apenas nos conglomerados selecionados para a amostra. Um exemplo desse caso pode ser visto na Pesquisa Nacional por Amostra de domicílios Contínua - PNAD Contínua do IBGE, em que são atualizados antes da coleta apenas os setores cencitários selecionados como Unidades Primárias de Amostragem - UPA, [@IBGE2014].

AS estratégias exemplificadas acima são úteis para tentar minimizar as perdas de unidades amostrais, mas não eliminam o problema da redução no tamanho final da amostra.

Uma outra forma de se tentar garantir que o número de unidades amostrais coletadas seja efetivamente igual ao valor de $n$ desejado é a chamada Amostragem Inversa.

## Amostragem Inversa

A *Amostragem Inversa* foi proposta por [@Haldane1945] como uma forma de enfrentar o problema de amostragem para estimar parâmetros relativos a eventos raros. Em termos gerais, consiste em pesquisar $n$ unidades da população até encontrar $m$ que contenham as caracterísitcas desejadas. Mesmo assim podem ocorrer casos em que a busca se estenda por toda a população (ou estrato ou conglomerado onde se faça uma subamostragem) sem que se encontre as $m$ unidades de interesse.

Suponha que $p$ seja a proporção de unidades da população que posuam determinada característica e $q=1-p$ a proproção das unidades que não possuem a mesma caracterrística. Se forem obaservadas $n$ unidades da população, selecionadas através de um sorteio aleatório, de maneira que nas $n-1$ primeiras unidades observadas forem encontradas $m-1$ unidades com a característica desejada e na observação $n$ a unidade tenha a característica, perfazendo o total de $m$ unidades com essa característica, pode-se definir um estimador não viciado para a proporção $p$ como:
\begin{equation}
\displaystyle \widehat p = \frac {m-1}{n-1}(\#eq:eqinv1)
\end{equation}
A variância do estimador da proporção pode ser aproximada por:
\begin{equation}
\displaystyle \widehat V(\widehat p) = \frac {m(n-m)}{n^2(n-1)}(\#eq:eqinv2)
\end{equation}

O Esquema de amostragem inversa pode ser usado no caso geral, onde não se deseja estimar a proporção das unidades que tenha determinada característica mas investigar uma amostra das unidades da população que pertençam a uma determinada população alvo. Por exemplo, pode-se estar interessado em aplicar um questionário às mulheres com idade de 15 até 49 anos, porém não há disponibilidade de um cadastro de tais mulhares, mas apenas do cadastro dos domicílios da área da pesquisa, nãO havendo indicação de quais deles tem mulheres na faixa etária desejada.

Uma possíbilidade é selecionar sequencialmente os domicílios, com um esquema de seleção aleatória, e aplicar os questionários quando existirem mulheres na faixa etária de interesse e apenas registrar algumas variáveis de controle. Assim após visitar $n$ domicílios serão obtidos os questionários relativos aos $m$ domicílios com mulheres de 15 a 49 anos.

