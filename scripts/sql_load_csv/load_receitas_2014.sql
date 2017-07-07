use tse;

-- load candidatos
load data local infile 'fontes_tse/2014/receitas_candidatos_2014_brasil.txt'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines
    (@cod, @descr, @data, @pretador, @seqcand, @uf, @partido,
      @numero, @cargo, @nome, @cpfcandidato, @recibo, @numdoc, @cpf,
        @doador, @nomdoadreceita, @uf_doador, @numpart, @numcandd, @codseeco,
          @seteco, @dt, @valor, @tipo, @fonte, @especie,
            @descrec, @cpforiginario, @nomedoador, @tipodoro, @setorigi, @nomeorig)
SET
  ano="2014", tipo="candidato",
  uf =      TRIM(@uf),
  nome=     TRIM(@nome),
  cargo=    TRIM(@cargo),
  numero=   TRIM(@numero),
  cpf=      TRIM(@cpf),
  cpf_candidato=TRIM(@cpfcandidato),
  doador=   TRIM(@doador), partido=TRIM(@partido),
  recurso = TRIM(@especie),
  motivo =  TRIM(@descrec),
  data=left(TRIM(@dt) , 10),
  valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
SHOW WARNINGS;

-- load comites
load data local infile 'fontes_tse/2014/receitas_comites_2014_brasil.txt'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@cod, @desc, @data, @pretador, @seqcom, @uf, @tipodiretorio, @partido,
    @tipodoc, @nrdoc, @cpf, @doador, @nomdoadreceita, @uf_doador, @numero, @numcandd, @codseeco,
        @seteco, @data, @valor, @tipo, @fonte, @especie,
          @descrec, @cpforig, @nomedoador, @tipodoro, @setorigi, @nomeorig)

  SET
    ano="2014", tipo="comite",
    uf = TRIM(@uf),
    nome =TRIM(@tipodiretorio),
    cpf=TRIM(@cpforig),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    numero=TRIM(@numero),
    cpf_candidato=TRIM(@cpf),
    recurso = TRIM(@especie),
    motivo = TRIM(@descrec),
    data=left(TRIM(@data) , 10),
    valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
  SHOW WARNINGS;

-- load partido
load data local infile 'fontes_tse/2014/receitas_partidos_2014_brasil.txt'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@cod, @desc, @data, @pretador, @seqcom, @uf, @tipodiretorio, @partido,
    @tipodoc, @nrdoc, @cpf, @doador, @nomdoadreceita, @uf_doador, @numero, @numcandd, @codseeco,
        @seteco, @data, @valor, @tipo, @fonte, @especie,
          @descrec, @cpforig, @nomedoador, @tipodoro, @setorigi, @nomeorig)

  SET
    ano="2014", tipo="partido",
    uf = TRIM(@uf),
    nome =TRIM(@tipodiretorio),
    cpf=TRIM(@cpforig),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    numero=TRIM(@numero),
    cpf_candidato=TRIM(@cpf),
    recurso = TRIM(@especie),
    motivo = TRIM(@descrec),
    data=left(TRIM(@data) , 10),
    valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
  SHOW WARNINGS;
