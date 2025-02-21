# ZikaChikFlash

Gera planilha dos agravos "Doença aguda pelo vírus Zika" e "Febre de Chikungunya" por município de residência, contendo os indicadores mais utilizados para esse agravo: casos notificados, casos confirmados, incidência, óbitos em investigação e óbitos confirmados, distribuídos por semana epidemiológica de notificação. O ZikaChikFlash gera a informação em poucos segundos sem fazer o uso do TabWin, bastando que o usuário insira na linha de comando o ano da notificação dos casos, o código do município e o tipo de agravo (Chikungunya ou Zika). Depois, colar na subpasta apropriada (dbf ou zip) o arquivo de exportação de Chikungunya do SINAN Online e, para os casos de Zika, o arquivo de exportação de notificação individual gerado no SINAN NET.

Sintaxe do executável:

~~~
ZikaChikFlash.exe [ano] [municipio] --[tipo]

[ano] Realiza o processamento de acordo com o ano especificado pelo usuário.
[municipio] Código IBGE do município de residência onde houve os casos.
--[tipo]: --chik para Febre de Chikungunya ou --zika para Zika virus.

Exemplo: ZikaChikFlash.exe 2024 5212501 --chik
~~~

## Como usar?  

Fazer o download do programa na área de executáveis;

