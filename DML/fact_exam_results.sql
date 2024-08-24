INSERT INTO `tcc-tsi.microdados_enem_2022.fact_exam_results` (
    NU_INSCRICAO,
    NU_ANO,
    NU_NOTA_CN,
    NU_NOTA_CH,
    NU_NOTA_LC,
    NU_NOTA_MT
)
SELECT 
    NU_INSCRICAO,
    NU_ANO,
    CAST(NU_NOTA_CN AS FLOAT64) AS NU_NOTA_CN,
    CAST(NU_NOTA_CH AS FLOAT64) AS NU_NOTA_CH,
    CAST(NU_NOTA_LC AS FLOAT64) AS NU_NOTA_LC,
    CAST(NU_NOTA_MT AS FLOAT64) AS NU_NOTA_MT
FROM 
    `tcc-tsi.microdados_enem_2022.enrich_microdados_enem_2022`;
