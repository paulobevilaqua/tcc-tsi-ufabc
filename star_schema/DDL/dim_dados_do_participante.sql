CREATE OR REPLACE TABLE `tcc-tsi.microdados_enem_2022.dim_dados_do_participante` (
    NU_INSCRICAO STRING OPTIONS(description="Número de inscrição do participante"),
    TP_FAIXA_ETARIA STRING OPTIONS(description="Faixa etária do participante"),
    TP_SEXO STRING OPTIONS(description="Sexo do participante"),
    TP_ESTADO_CIVIL STRING OPTIONS(description="Estado civil do participante"),
    TP_COR_RACA STRING OPTIONS(description="Cor/raça do participante"),
    TP_NACIONALIDADE STRING OPTIONS(description="Nacionalidade do participante"),
    TP_ST_CONCLUSAO STRING OPTIONS(description="Situação de conclusão do Ensino Médio do participante"),
    TP_ANO_CONCLUIU STRING OPTIONS(description="Ano de conclusão do Ensino Médio do participante"),
    TP_ESCOLA STRING OPTIONS(description="Tipo de escola de Ensino Médio frequentada pelo participante"),
    TP_ENSINO STRING OPTIONS(description="Tipo de ensino médio que o participante cursou"),
    IN_TREINEIRO STRING OPTIONS(description="Indica se o participante fez a prova apenas para treino")
);