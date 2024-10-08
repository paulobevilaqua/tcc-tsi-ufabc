bq load \
  --source_format=CSV \
  --skip_leading_rows=1 \
  --replace \
  --field_delimiter=";" \
  --schema=\
NU_INSCRICAO:STRING,\
NU_ANO:STRING,\
TP_FAIXA_ETARIA:STRING,\
TP_SEXO:STRING,\
TP_ESTADO_CIVIL:STRING,\
TP_COR_RACA:STRING,\
TP_NACIONALIDADE:STRING,\
TP_ST_CONCLUSAO:STRING,\
TP_ANO_CONCLUIU:STRING,\
TP_ESCOLA:STRING,\
TP_ENSINO:STRING,\
IN_TREINEIRO:STRING,\
CO_MUNICIPIO_ESC:STRING,\
NO_MUNICIPIO_ESC:STRING,\
CO_UF_ESC:STRING,\
SG_UF_ESC:STRING,\
TP_DEPENDENCIA_ADM_ESC:STRING,\
TP_LOCALIZACAO_ESC:STRING,\
TP_SIT_FUNC_ESC:STRING,\
CO_MUNICIPIO_PROVA:STRING,\
NO_MUNICIPIO_PROVA:STRING,\
CO_UF_PROVA:STRING,\
SG_UF_PROVA:STRING,\
TP_PRESENCA_CN:STRING,\
TP_PRESENCA_CH:STRING,\
TP_PRESENCA_LC:STRING,\
TP_PRESENCA_MT:STRING,\
CO_PROVA_CN:STRING,\
CO_PROVA_CH:STRING,\
CO_PROVA_LC:STRING,\
CO_PROVA_MT:STRING,\
NU_NOTA_CN:STRING,\
NU_NOTA_CH:STRING,\
NU_NOTA_LC:STRING,\
NU_NOTA_MT:STRING,\
TX_RESPOSTAS_CN:STRING,\
TX_RESPOSTAS_CH:STRING,\
TX_RESPOSTAS_LC:STRING,\
TX_RESPOSTAS_MT:STRING,\
TP_LINGUA:STRING,\
TX_GABARITO_CN:STRING,\
TX_GABARITO_CH:STRING,\
TX_GABARITO_LC:STRING,\
TX_GABARITO_MT:STRING,\
TP_STATUS_REDACAO:STRING,\
NU_NOTA_COMP1:STRING,\
NU_NOTA_COMP2:STRING,\
NU_NOTA_COMP3:STRING,\
NU_NOTA_COMP4:STRING,\
NU_NOTA_COMP5:STRING,\
NU_NOTA_REDACAO:STRING,\
Q001:STRING,\
Q002:STRING,\
Q003:STRING,\
Q004:STRING,\
Q005:STRING,\
Q006:STRING,\
Q007:STRING,\
Q008:STRING,\
Q009:STRING,\
Q010:STRING,\
Q011:STRING,\
Q012:STRING,\
Q013:STRING,\
Q014:STRING,\
Q015:STRING,\
Q016:STRING,\
Q017:STRING,\
Q018:STRING,\
Q019:STRING,\
Q020:STRING,\
Q021:STRING,\
Q022:STRING,\
Q023:STRING,\
Q024:STRING,\
Q025:STRING \
microdados_enem_2022.raw_microdados_enem_2022 \
gs://tcc-tsi-dados-enem/MICRODADOS_ENEM_2022.csv