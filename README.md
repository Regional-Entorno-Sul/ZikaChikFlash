# ZikaChikFlash

Gera planilha dos agravos "Doença aguda pelo vírus Zika" e "Febre de Chikungunya" por município de residência, contendo os indicadores mais utilizados para esse agravo: casos notificados, casos confirmados, incidência, óbitos em investigação e óbitos confirmados, distribuídos por semana epidemiológica de notificação. O ZikaChikFlash gera a informação em poucos segundos sem fazer o uso do TabWin, bastando que o usuário insira na linha de comando o ano da notificação dos casos, o código do município e o tipo de agravo (Chikungunya ou Zika).

Sintaxe do executável:

~~~
ZikaChikFlash.exe [ano] [municipio] --[tipo]

[ano] Realiza o processamento de acordo com o ano especificado pelo usuário.
[municipio] Código IBGE do município de residência onde houve os casos.
--[tipo]: --chik para Febre de Chikungunya ou --zika para Zika virus.

Exemplo: ZikaChikFlash.exe 2024 5212501 --chik
~~~

## Como usar?  

1. Fazer o download do programa na área de releases desse repositório;
2. Descompactar o arquivo resultante do download usando um descompactador com suporte à extensão zip. Após a descompactação, a pasta "ZikaChikFlash" deverá ser movida para o disco local C ou unidade local C no PC do usuário;

![x](/pic1.jpg)  

3. Colocar na subpasta "dbf" o arquivo de notificações individuais gerado pelo módulo de exportação DBF do SINAN NET (nindinet.dbf) para geração da planilha do agravo "Doença aguda pelo vírus Zika" ou colocar na subpasta "zip", arquivo com os casos de Febre de Chikungunya gerado pelo SINAN Online se a intenção é de gerar uma planilha com os casos deste agravo. Com relação a este último arquivo, não é necessário descompactá-lo dentro da subpasta "zip", pois o próprio programa já faz esse processo de forma automática;  

4. Com o arquivo ou arquivos com os dados nos seus devidos lugares, basta o usuário rodar o programa usando a sintaxe descrita no início do texto;  

![x](/pic2.jpg)  

5. O resultado final será uma planilha no formato CSV, que estará disponível na subpasta "out".

![x](/pic3.jpg)  

