bq load \
  --source_format=CSV \
  --field_delimiter=";" \
  --skip_leading_rows=1 \
  --replace \
  microdados_enem_2022.raw_microdados_enem_2022 \
  gs://tcc-tsi-dados-enem/MICRODADOS_ENEM_2022.csv
