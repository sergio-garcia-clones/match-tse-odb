USE tse;

# Normalize names
update grupodb
SET doador_norm = doador;

update grupodb
SET doador_norm = doador_original
WHERE doador_original <> '' or doador_original IS NOT NULL;

UPDATE grupodb
SET doador_norm = 'Construtora'
WHERE cpf_doador LIKE '15102288%' 
or doador LIKE 'Cons%'
or ((doador LIKE 'NORBERTO ODEBRECHT%' or doador LIKE 'ODEBRECHT') and ano < '2002')
or ((doador LIKE 'NORB ODEBRECHT%' or doador LIKE 'ODEBRECHT') and ano = '2006')
or doador LIKE 'CO0NS%'
or doador LIKE 'C N ODEB%'
or doador LIKE 'Contrutora%'
or doador_original LIKE 'Const%';

UPDATE grupodb
SET doador_norm = 'ECOSTEEl'
WHERE doador LIKE 'ECOSTEEL%';

UPDATE grupodb
SET doador_norm = 'NORBERTO ODEBRECHT'
WHERE doador LIKE 'NORBERTO ODEBRECHT' and ano > '2000';

UPDATE grupodb
SET doador_norm = 'CBPO'
WHERE doador LIKE 'CBPO%' or doador_original LIKE 'CBPO%' or doador LIKE 'C.B.P.O%' or doador LIKE 'CBOP' or cpf_doador = '61156410000110' or doador like 'cia bras%';

UPDATE grupodb
SET doador_norm = 'Braskem'
WHERE cpf_doador LIKE '42150391%'
or doador like 'Braske%'
or doador_original like 'BRASKE%'; 

UPDATE grupodb
SET doador_norm = 'COPESUL'
WHERE cpf_doador LIKE '88948492%'
or doador like '%COPESUL%'; 

UPDATE grupodb
SET doador_norm = 'POLIALDEN'
WHERE doador like 'POLIAD%'
or doador like 'PULIAD%'
or cpf_doador like '13545769%'
or doador like 'POLIALD%'; 

UPDATE grupodb
SET doador_norm = 'NITROCARBONO'
WHERE doador like 'NITROCARBONO%'; 

UPDATE grupodb
SET doador_norm = 'TRIKEM'
WHERE doador like '%TRIKE%';

UPDATE grupodb
SET doador_norm = 'TRIKEM'
WHERE cpf_doador LIKE '13558226%'
or doador like '%TRIKE%';

UPDATE grupodb
SET doador_norm = 'QUANTIQ'
WHERE doador LIKE 'QUANT%'
or doador_original LIKE 'QUANTIQ%'
or cpf_doador LIKE '62227509%'
or doador LIKE 'IPIRANGA COMERCIAL%'
or doador LIKE 'IQ SOLUÇÕES%';

UPDATE grupodb
SET doador_norm = 'Politeno'
WHERE doador LIKE 'Politeno%' or doador LIKE 'Politeno%';

UPDATE grupodb
SET doador_norm = 'Mectron'
WHERE doador LIKE 'Mectron%' or doador LIKE 'Mectron%';

UPDATE grupodb
SET doador_norm = 'Quattor'
WHERE doador LIKE 'Quattor%' or doador LIKE 'Quattar%';

UPDATE grupodb
SET doador_norm = 'O. Realizações Imobiliárias'
WHERE doador LIKE 'Odebrecht Reali%'
or doador_original LIKE 'ODEBRECHT REAL%';

UPDATE grupodb
SET doador_norm = 'O. Agroindustrial'
WHERE doador LIKE 'Odebrecht Agro%'
or doador LIKE 'ETH%'
or doador_original LIKE 'ODEBRECHT AGROI%';

UPDATE grupodb
SET doador_norm = 'O. Ambiental'
WHERE doador LIKE 'ODEBRECHT AMBIENTAL%' or doador_original LIKE 'ODEBRECHT AMBIENTAL%';

UPDATE grupodb
SET doador_norm = 'O. Serviços'
WHERE doador LIKE 'ODEBRECHT SERV%' or doador_original LIKE 'ODEBRECHT SERV%';

UPDATE grupodb
SET doador_norm = 'ODBINV'
WHERE cpf_doador LIKE '1510558800%';

UPDATE grupodb
SET doador_norm = 'Pedro Carneiro Leão'
WHERE doador LIKE 'PEDRO AUGUS%';

UPDATE grupodb
SET doador_norm = 'Alexandrino Alencar'
WHERE doador LIKE 'Alexandrino de%';

UPDATE grupodb
SET doador_norm = 'Catabas'
WHERE doador LIKE 'Catabas%';

UPDATE grupodb
SET doador_norm = 'Embraport'
WHERE doador LIKE 'EMBRAP%'
or doador_original LIKE 'EMBRAP%';

UPDATE grupodb
SET doador_norm = 'Enseada Ind. Naval'
WHERE doador LIKE 'ENSEADA%' or doador LIKE 'ESTALEIRO%'
OR doador_original LIKE 'ENSEADA%' or doador_original LIKE 'ESTALEIRO%';

UPDATE grupodb
SET doador_norm = 'Ismael Campos'
WHERE doador LIKE 'Ismael Campos%';

UPDATE grupodb
SET doador_norm = 'SUPERVIAS'
WHERE doador LIKE 'SUPERVIAS%';

UPDATE grupodb
SET doador_norm = 'Arnaldo Cumplido'
WHERE doador LIKE 'Arnaldo Cumplido%';

UPDATE grupodb
SET doador_norm = 'FABIO GANDOLFO'
WHERE doador LIKE 'FABIO ANDREANI%';

UPDATE grupodb
SET doador_norm = 'AGRO ENERGIA STA LUZIA'
WHERE doador LIKE 'AGRO ENERGIA S%'
or doador_original LIKE 'AGRO ENERGIA S%';

UPDATE grupodb
SET doador_norm = 'FRANCISCO PELTIER'
WHERE doador LIKE 'FRANCISCO PELTIER%';

UPDATE grupodb
SET doador_norm = 'Emílio O. Peltier'
WHERE doador LIKE 'EMILIO ODEBRECHT P%';

UPDATE grupodb
SET doador_norm = 'Hilberto Mascarenhas'
WHERE doador LIKE 'Hilberto Mascarenhas%';

UPDATE grupodb
SET doador_norm = 'Ilka O. Peltier'
WHERE doador LIKE 'Ilka O%';

UPDATE grupodb
SET doador_norm = 'João Gouveia'
WHERE doador LIKE 'JOAO G%';

UPDATE grupodb
SET doador_norm = 'Luiz Schneider'
WHERE doador LIKE 'LUIZ ANTONIO%'
or doador_original LIKE 'LUIZ ANTONIO%';

UPDATE grupodb
SET doador_norm = 'VICTOR GRADIN'
WHERE doador LIKE 'VICTOR GRADIN%';

UPDATE grupodb
SET doador_norm = 'PAULO BARQUEIRO'
WHERE doador LIKE 'PAULO RICARDO%'
or doador_original LIKE 'PAULO RICARDO%';

UPDATE grupodb
SET doador_norm = 'SERGIO LUIZ'
WHERE doador LIKE 'SERGIO LUIZ%'
or doador_original LIKE 'SERGIO LUIZ%';


UPDATE grupodb
SET doador_norm = 'RICARDO ROTH'
WHERE doador LIKE 'RICARDO ROTH%'
or doador_original LIKE 'RICARDO ROTH%';

UPDATE grupodb
SET doador_norm = 'PEDRO CARNEIRO'
WHERE doador LIKE 'PEDRO CARNEIRO%'
or doador LIKE 'PEDRO AUGUSTO CARNEIRO%'
or doador_original LIKE 'PEDRO CARNEIRO%';

UPDATE grupodb
SET doador_norm = 'Ruy Lemos'
WHERE doador LIKE 'RUI LEMOS%' or doador LIKE 'RUY LEMOS%';

UPDATE grupodb
SET doador_norm = 'Óleo e Gás' 
WHERE doador LIKE 'ODEBRECHT O%' or doador LIKE 'ODEBRECHT Ó%' or doador LIKE 'ODERBRECHT OL%' or doador LIKE 'ODEBRECH O%' or doador LIKE 'ODEBRECH Ó%' or doador_original LIKE 'ODEBRECHT O%' or doador_original LIKE 'ODEBRECHT Ó%';

UPDATE grupodb
SET doador_norm = 'CETREL' 
WHERE doador LIKE 'CETREL%'
or doador_original LIKE 'CETREL%'
or cpf_doador like '07981796%';

#Update party names
UPDATE grupodb
SET partido = 'DEM' 
WHERE partido = 'PFL';

UPDATE grupodb
SET partido = 'PODE' 
WHERE partido = 'PTN';

UPDATE grupodb
SET partido = 'PTdoB' 
WHERE partido = 'PT do B';

UPDATE grupodb
SET partido = 'PCdoB' 
WHERE partido = 'PC do B';

UPDATE grupodb
SET partido = 'PCdoB' 
WHERE partido = 'PC do B';

#Uppercase the names
UPDATE grupodb SET `doador_norm` = UPPER( `doador_norm` );
UPDATE grupodb SET `candidato` = UPPER( `candidato` );



UPDATE laranjas
SET doador_norm = 'PETROPOLIS'
WHERE doador LIKE 'CERVERJARIA PETR%'
or doador_original LIKE 'CERVEJARIA PETR%'
or cpf_doador = '20569363000150'
or doador LIKE 'CERVEJARIA PETR%'
or doador_original LIKE 'CERVERJARIA PETR%';

UPDATE laranjas
SET doador_norm = 'PRAIAMAR'
WHERE cpf_doador LIKE '00851567%'
or doador like 'PRAIAMAR IND%'
or doador_original like 'PRAIAMAR IND%';

UPDATE laranjas
SET doador_norm = 'LEYROZ'
WHERE cpf_doador LIKE '00851567%'
or cpf_doador LIKE '06958578%'
or doador like 'leyroz%'
or doador like 'ROF COMERCIAL%'
or doador_original like 'ROF COMERCIAL%';

UPDATE laranjas
SET doador_norm = 'DAG CONSTRUTORA'
WHERE doador LIKE 'DAG CONST%';

