CREATE TABLE `tcc-tsi.microdados_enem_2022.fact_exam_results` (
    NU_INSCRICAO STRING OPTIONS(description="Número de inscrição do participante"),
    NU_ANO STRING OPTIONS(description="Ano da realização do ENEM"),
    NU_NOTA_CN FLOAT64 OPTIONS(description="Nota da prova de Ciências da Natureza"),
    NU_NOTA_CH FLOAT64 OPTIONS(description="Nota da prova de Ciências Humanas"),
    NU_NOTA_LC FLOAT64 OPTIONS(description="Nota da prova de Linguagens e Códigos"),
    NU_NOTA_MT FLOAT64 OPTIONS(description="Nota da prova de Matemática")
);
