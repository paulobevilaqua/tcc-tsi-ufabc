CREATE TABLE `tcc-tsi.microdados_enem_2022.dim_dados_do_local_de_aplicacao` (
    NU_INSCRICAO STRING OPTIONS(description="Número de inscrição do participante"),
    CO_MUNICIPIO_PROVA STRING OPTIONS(description="Código do município onde a prova foi aplicada"),
    NO_MUNICIPIO_PROVA STRING OPTIONS(description="Nome do município onde a prova foi aplicada"),
    CO_UF_PROVA STRING OPTIONS(description="Código da Unidade Federativa onde a prova foi aplicada"),
    SG_UF_PROVA STRING OPTIONS(description="Sigla da Unidade Federativa onde a prova foi aplicada")
);
