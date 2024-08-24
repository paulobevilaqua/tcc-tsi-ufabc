CREATE TABLE `tcc-tsi.microdados_enem_2022.dim_dados_da_redacao` (
    NU_INSCRICAO STRING OPTIONS(description="Número de inscrição do participante"),
    NU_NOTA_REDACAO FLOAT64 OPTIONS(description="Nota total da redação"),
    TP_STATUS_REDACAO STRING OPTIONS(description="Status da redação do participante"),
    NU_NOTA_COMP1 FLOAT64 OPTIONS(description="Nota da primeira competência da redação"),
    NU_NOTA_COMP2 FLOAT64 OPTIONS(description="Nota da segunda competência da redação"),
    NU_NOTA_COMP3 FLOAT64 OPTIONS(description="Nota da terceira competência da redação"),
    NU_NOTA_COMP4 FLOAT64 OPTIONS(description="Nota da quarta competência da redação"),
    NU_NOTA_COMP5 FLOAT64 OPTIONS(description="Nota da quinta competência da redação")
);
