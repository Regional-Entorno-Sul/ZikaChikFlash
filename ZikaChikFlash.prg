Function main()

screen()
clean()

PUBLIC nPop, cCode_Mun
PUBLIC sum_not2, sum_conf2, sum_ob_inv2, sum_obito2
PUBLIC cAno, cMunRes, cTipo, nLine

nLine := 10

cAno := alltrim( HB_ArgV( 1 ) )
cMunRes := alltrim( HB_ArgV( 2 ) )
cTipo := alltrim( HB_ArgV( 3 ) )
cMunRes2 = left( cMunRes, 6 )

if cTipo = "--chik"

verify()
transfer()
extract()
pop()
notificado()
confirmado()
obito_investiga()
obito()
inciden()
total()
export()
rename_file()
quit_x()

endif

if cTipo = "--zika"

verify_z()
transfer_z()
pop()
notificado_z()
confirmado_z()
obito_z()
inciden_z()
total_z()
export_z()
rename_file_z()
quit_x()

endif

function notificado()

nLine++
@ nLine,0 say "Extraindo os casos notificados..."

use "c:\zikachikflash\zip\chikon.dbf"

public aArray_notif := {}

for f = 1 to 53
if f = 1 .or. f = 2 .or. f = 3 .or. f = 4 .or. f = 5 .or. f = 6 .or. f = 7 .or. f = 8 .or. f = 9
count to casos for ( sem_not = cAno + "0" + alltrim(str(f)) ) .and. id_mn_resi = cMunRes2
AAdd( aArray_notif, casos )
else
count to casos for ( sem_not = cAno + alltrim(str(f)) ) .and. id_mn_resi = cMunRes2
AAdd( aArray_notif, casos )
endif

next
close

use "c:\zikachikflash\run\chik_model.dbf"
for a = 1 to 53
replace notific with alltrim(str(aArray_notif[a]))
skip
next
close

return

function notificado_z()

nLine++
@ nLine,0 say "Extraindo os casos notificados..."

use "c:\zikachikflash\dbf\nindinet.dbf"

public aArray_notif := {}

for f = 1 to 53
if f = 1 .or. f = 2 .or. f = 3 .or. f = 4 .or. f = 5 .or. f = 6 .or. f = 7 .or. f = 8 .or. f = 9
count to casos for ( sem_not = cAno + "0" + alltrim(str(f)) ) .and. id_mn_resi = cMunRes2 .and. id_agravo = "A928"
AAdd( aArray_notif, casos )
else
count to casos for ( sem_not = cAno + alltrim(str(f)) ) .and. id_mn_resi = cMunRes2 .and. id_agravo = "A928"
AAdd( aArray_notif, casos )
endif

next
close

use "c:\zikachikflash\run\zika_model.dbf"
for a = 1 to 53
replace notific with alltrim(str(aArray_notif[a]))
skip
next
close

return

function confirmado()

nLine++
@ nLine,0 say "Extraindo os casos confirmados..."
use "c:\zikachikflash\zip\chikon.dbf"

public aArray_confirm := {}

for g = 1 to 53
if g = 1 .or. g = 2 .or. g = 3 .or. g = 4 .or. g = 5 .or. g = 6 .or. g = 7 .or. g = 8 .or. g = 9
count to casos2 for ( sem_not = cAno + "0" + alltrim(str(g)) ) .and. ( classi_fin = "13" ) .and. id_mn_resi = cMunRes2
AAdd( aArray_confirm, casos2 )
else
count to casos2 for ( sem_not = cAno + alltrim(str(g)) ) .and. ( classi_fin = "13" ) .and. id_mn_resi = cMunRes2
AAdd( aArray_confirm, casos2 )
endif

next
close

use "c:\zikachikflash\run\chik_model.dbf"
for b = 1 to 53
replace confirm with alltrim(str(aArray_confirm[b]))
skip
next
close

return

function confirmado_z()

nLine++
@ nLine,0 say "Extraindo os casos confirmados..."
use "c:\zikachikflash\dbf\nindinet.dbf"

public aArray_confirm := {}

for g = 1 to 53
if g = 1 .or. g = 2 .or. g = 3 .or. g = 4 .or. g = 5 .or. g = 6 .or. g = 7 .or. g = 8 .or. g = 9
count to casos2 for ( sem_not = cAno + "0" + alltrim(str(g)) ) .and. ( classi_fin = "1" ) .and. id_mn_resi = cMunRes2 .and. id_agravo = "A928"
AAdd( aArray_confirm, casos2 )
else
count to casos2 for ( sem_not = cAno + alltrim(str(g)) ) .and. ( classi_fin = "1" ) .and. id_mn_resi = cMunRes2 .and. id_agravo = "A928"
AAdd( aArray_confirm, casos2 )
endif

next
close

use "c:\zikachikflash\run\zika_model.dbf"
for b = 1 to 53
replace confirm with alltrim(str(aArray_confirm[b]))
skip
next
close

return

function obito_investiga()

nLine++
@ nLine,0 say "Extraindo os obitos em investigacao..."
use "c:\zikachikflash\zip\chikon.dbf"

public aArray_obito_inv := {}

for h = 1 to 53
if h = 1 .or. h = 2 .or. h = 3 .or. h = 4 .or. h = 5 .or. h = 6 .or. h = 7 .or. h = 8 .or. h = 9
count to obito_inv for ( sem_not = cAno + "0" + alltrim(str(h)) ) .and. id_mn_resi = cMunRes2 .and. evolucao = "4"
AAdd( aArray_obito_inv, obito_inv )
else
count to obito_inv for ( sem_not = cAno + alltrim(str(h)) ) .and. id_mn_resi = cMunRes2 .and. evolucao = "4"
AAdd( aArray_obito_inv, obito_inv )
endif

next
close

use "c:\zikachikflash\run\chik_model.dbf"
for c = 1 to 53
replace obito_inv with alltrim(str(aArray_obito_inv[c]))
skip
next
close

return

function obito()

nLine++
@ nLine,0 say "Extraindo os obitos pelo agravo..."
use "c:\zikachikflash\zip\chikon.dbf"

public aArray_obito := {}

for i = 1 to 53
if i = 1 .or. i = 2 .or. i = 3 .or. i = 4 .or. i = 5 .or. i = 6 .or. i = 7 .or. i = 8 .or. i = 9
count to obito for ( sem_not = cAno + "0" + alltrim(str(i)) ) .and. ( classi_fin = "13" ) .and. id_mn_resi = cMunRes2 .and. evolucao = "2"
AAdd( aArray_obito, obito )
else
count to obito for ( sem_not = cAno + alltrim(str(i)) ) .and. ( classi_fin = "13" ) .and. id_mn_resi = cMunRes2 .and. evolucao = "2"
AAdd( aArray_obito, obito )
endif

next
close

use "c:\zikachikflash\run\chik_model.dbf"
for d = 1 to 53
replace obito_conf with alltrim(str(aArray_obito[d]))
skip
next
close

return












function obito_z()

nLine++
@ nLine,0 say "Extraindo os obitos pelo agravo..."
use "c:\zikachikflash\dbf\nindinet.dbf"

public aArray_obito := {}

for i = 1 to 53
if i = 1 .or. i = 2 .or. i = 3 .or. i = 4 .or. i = 5 .or. i = 6 .or. i = 7 .or. i = 8 .or. i = 9
count to obito for ( sem_not = cAno + "0" + alltrim(str(i)) ) .and. ( classi_fin = "1" ) .and. id_mn_resi = cMunRes2 .and. evolucao = "2" .and. id_agravo = "A928"
AAdd( aArray_obito, obito )
else
count to obito for ( sem_not = cAno + alltrim(str(i)) ) .and. ( classi_fin = "1" ) .and. id_mn_resi = cMunRes2 .and. evolucao = "2" .and. id_agravo = "A928"
AAdd( aArray_obito, obito )
endif

next
close

use "c:\zikachikflash\run\zika_model.dbf"
for d = 1 to 53
replace obito_conf with alltrim(str(aArray_obito[d]))
skip
next
close

return













function inciden()

nLine++
@ nLine,0 say "Calculando a incidencia por semana epidemiologica..."
use "c:\zikachikflash\run\chik_model.dbf"
for e = 1 to 53
nIncidencia := ( val( confirm ) / ( nPop ) ) * 100000
replace incidencia with nIncidencia
skip
next
close

return





function inciden_z()

nLine++
@ nLine,0 say "Calculando a incidencia por semana epidemiologica..."
use "c:\zikachikflash\run\zika_model.dbf"
for e = 1 to 53
nIncidencia := ( val( confirm ) / ( nPop ) ) * 100000
replace incidencia with nIncidencia
skip
next
close

return







function total()

nLine++
@ nLine,0 say "Calculando os totais..."
use "c:\zikachikflash\run\chik_model.dbf"
sum val( notific ) to sum_not while .not. eof()
goto top
sum val( confirm ) to sum_conf while .not. eof()
goto top
sum val( obito_inv ) to sum_ob_inv while .not. eof()
goto top
sum val( obito_conf ) to sum_obito while .not. eof()

sum_not2 := sum_not
sum_conf2 := sum_conf
sum_ob_inv2 := sum_ob_inv
sum_obito2 := sum_obito

close

use "c:\zikachikflash\run\chik_model.dbf"
goto 54
replace notific with alltrim( str( sum_not2 ) )
replace confirm with alltrim( str( sum_conf ) )
replace obito_inv with alltrim( str( sum_ob_inv ) )
replace obito_conf with alltrim( str( sum_obito ) )
close

return











function total_z()

nLine++
@ nLine,0 say "Calculando os totais..."
use "c:\zikachikflash\run\zika_model.dbf"
sum val( notific ) to sum_not while .not. eof()
goto top
sum val( confirm ) to sum_conf while .not. eof()
goto top
sum val( obito_conf ) to sum_obito while .not. eof()

sum_not2 := sum_not
sum_conf2 := sum_conf
sum_obito2 := sum_obito

close

use "c:\zikachikflash\run\zika_model.dbf"
goto 54
replace notific with alltrim( str( sum_not2 ) )
replace confirm with alltrim( str( sum_conf ) )
replace obito_conf with alltrim( str( sum_obito ) )
close

return

















function export()

nLine++
@ nLine,0 say "Exportando o resultado para um arquivo CSV..."
use "c:\zikachikflash\run\chik_model.dbf"
copy to "c:\zikachikflash\out\chik_output.csv" delimited

cCommand := "c:\zikachikflash\exe\sed.exe -i " + chr(34) + "1i semana,notificado,confirmado,incidencia,obito em investigacao,obito confirmado" + ;
chr(34) + " " + ( "c:\zikachikflash\out\chik_output.csv" )
__run( cCommand )

return




function export_z()

nLine++
@ nLine,0 say "Exportando o resultado para um arquivo CSV..."
use "c:\zikachikflash\run\zika_model.dbf"
copy to "c:\zikachikflash\out\zika_output.csv" delimited

cCommand := "c:\zikachikflash\exe\sed.exe -i " + chr(34) + "1i semana,notificado,confirmado,incidencia,obito confirmado" + ;
chr(34) + " " + ( "c:\zikachikflash\out\zika_output.csv" )
__run( cCommand )

return






function rename_file()

nLine++
@ nLine,0 say "Renomeando arquivo gerado..."
cFile1 := "c:\zikachikflash\out\chik_output.csv"
cFile2 := "c:\zikachikflash\out\chik_" + alltrim( cCode_Mun ) + "_" + alltrim( cAno ) + ".csv"
rename ( cFile1 ) to ( cFile2 )

return







function rename_file_z()

nLine++
@ nLine,0 say "Renomeando arquivo gerado..."
cFile1 := "c:\zikachikflash\out\zika_output.csv"
cFile2 := "c:\zikachikflash\out\zika_" + alltrim( cCode_Mun ) + "_" + alltrim( cAno ) + ".csv"
rename ( cFile1 ) to ( cFile2 )

return







function quit_x()
nLine++
@ nLine,0 say "Fim do programa."  color "g+/"
return


function verify()

@ nLine,0 say "Verificando arquivos..."
nTotal := ADir ( "c:\ZikaChikFlash\zip\*.zip" )

if nTotal <> 1
@ 9,0 say "Erro!" color "r+/"
@ 10,0 say "Somente podera haver um arquivo no formato zip no diretorio 'zip'."
@ 11,0 say "Fim do programa."
quit
else
@ 9,0 say "Quantidade de arquivos zip...ok"
endif

return

function verify_z()

@ nLine,0 say "Verificando arquivos..."
nTotal := ADir ( "c:\ZikaChikFlash\dbf\*.dbf" )

if nTotal <> 1
@ 9,0 say "Erro!" color "r+/"
@ 10,0 say "Somente podera haver um arquivo no formato dbf no diretorio 'dbf'."
@ 11,0 say "Fim do programa."
quit
else
@ 9,0 say "Quantidade de arquivos dbf...ok"
endif

return

function extract()

@ nLine++,0 say "Extraindo o arquivo dbf do arquivo zip..."
nArraySize := ADir( "c:\ZikaChikFlash\zip\" )
aName := Array( nArraySize )
ADir( ( "c:\ZikaChikFlash\zip\" ),aName )
for w = 1 to nArraySize
hb_UnzipFile( "c:\ZikaChikFlash\zip\" + aName[w] )
next
@ nLine++,0 say "Arquivo zip:" color "w+/"
@ nLine,0 say ( "c:\ZikaChikFlash\zip\" + aName[1] ) color "gr+/"

nArraySize2 := ADir( "c:\ZikaChikFlash\zip\*.dbf" )
aName2 := Array( nArraySize2 )
ADir( ( "c:\ZikaChikFlash\zip\*.dbf" ),aName2 )
nLine++
@ nLine,0 say "Arquivo dbf:" color "w+/"
nLine++
@ nLine,0 say ( "c:\ZikaChikFlash\zip\" + aName2[1] ) color "gr+/"

nLine++
set color to gr+/
@ nLine,0 say "Renomeando arquivo..."
rename ( "c:\ZikaChikFlash\zip\" + aName2[1] ) to ("c:\ZikaChikFlash\zip\chikon.dbf")

return

function pop()
nLine++
@ nLine,0 say "Extraindo populacao do arquivo 'pop_IBGE.dbf'..."
use "c:\zikachikflash\tab\pop_IBGE.dbf"
locate for full_code = cMunRes
if found() = .T.
nPop = n_pop_
cCode_Mun = full_code
endif
close
return

function clean()
delete file "c:\zikachikflash\run\chik_model.dbf"
if file ("c:\zikachikflash\zip\*.dbf") = .T.
__run( "del /F /Q c:\zikachikflash\zip\*.dbf" )
endif
if file ("c:\zikachikflash\out\*.csv") = .T.
__run( "del /F /Q c:\zikachikflash\out\*.csv" )
endif
return

function transfer()
@ nLine++,0 say "Transferindo arquivos..."
copy file "c:\zikachikflash\mod\chik_model.dbf" to "c:\zikachikflash\run\chik_model.dbf"
return

function transfer_z()
@ nLine++,0 say "Transferindo arquivos..."
copy file "c:\zikachikflash\mod\zika_model.dbf" to "c:\zikachikflash\run\zika_model.dbf"
return

function screen()
set color to g+/
cls
@ 1,0 say "***********************************************************************************"
@ 2,0 say "* ZikaChikFlash.exe - versao 1.3 - 19/02/2025                                     *"
@ 3,0 say "* Diretoria da Macrorregional Nordeste - Regional Entorno Sul                     *"
@ 4,0 say "* Sintaxe:                                                                        *"
@ 5,0 say "* ZikaChikFlash.exe [ano] [municipio] --[tipo]                                    *"
@ 6,0 say "* [tipo]: --chik para dados de Chikungunya ou --zika para dados de Zika virus     *"
@ 7,0 say "* Exemplo: ZikaChikFlash.exe 2024 5212501 --chik                                  *"
@ 8,0 say "***********************************************************************************"
set color to gr+/
return

return nil
