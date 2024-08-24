CREATE OR REPLACE TABLE `tcc-tsi.microdados_enem_2022.fact_exam_results` (
    NU_INSCRICAO STRING OPTIONS(description="Número de inscrição do participante"),
    NU_ANO STRING OPTIONS(description="Ano da realização do ENEM"),
    NU_NOTA_CN FLOAT64 OPTIONS(description="Nota da prova de Ciências da Natureza"),
    NU_NOTA_CH FLOAT64 OPTIONS(description="Nota da prova de Ciências Humanas"),
    NU_NOTA_LC FLOAT64 OPTIONS(description="Nota da prova de Linguagens e Códigos"),
    NU_NOTA_MT FLOAT64 OPTIONS(description="Nota da prova de Matemática"),
    NU_NOTA_FINAL_OBJETIVA FLOAT64 OPTIONS(description="Nota final das provas objetivas (média aritmética)"),
    NU_NOTA_COMP1 FLOAT64 OPTIONS(description="Nota da primeira competência da redação"),
    NU_NOTA_COMP2 FLOAT64 OPTIONS(description="Nota da segunda competência da redação"),
    NU_NOTA_COMP3 FLOAT64 OPTIONS(description="Nota da terceira competência da redação"),
    NU_NOTA_COMP4 FLOAT64 OPTIONS(description="Nota da quarta competência da redação"),
    NU_NOTA_COMP5 FLOAT64 OPTIONS(description="Nota da quinta competência da redação"),
    NU_NOTA_REDACAO FLOAT64 OPTIONS(description="Nota total da redação")
);
