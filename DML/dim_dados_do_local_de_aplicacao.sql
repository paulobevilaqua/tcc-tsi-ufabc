INSERT INTO `tcc-tsi.microdados_enem_2022.dim_dados_do_local_de_aplicacao` (
    NU_INSCRICAO,
    CO_MUNICIPIO_PROVA,
    NO_MUNICIPIO_PROVA,
    CO_UF_PROVA,
    SG_UF_PROVA
)
SELECT 
    NU_INSCRICAO,
    CO_MUNICIPIO_PROVA,
    NO_MUNICIPIO_PROVA,
    CO_UF_PROVA,
    SG_UF_PROVA
FROM 
    `tcc-tsi.microdados_enem_2022.enrich_microdados_enem_2022`;
