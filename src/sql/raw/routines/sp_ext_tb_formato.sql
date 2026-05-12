begin

  -- criando a tabela externa mapeada para o storage
  create or replace external table `<PROJECT_ID>.<DATASET>.ext_tb_formato` 
    (
      id_formato int64
      ,formato string
    )
  options
    (
      format = 'csv'
      ,uris = ['gs://datalake.../tb_formato.csv']
      ,encoding = 'ISO-8859-1'
      ,skip_leading_rows = 1
      ,field_delimiter = ';'
    );

  -- testando a leitura
  --select 
  --  *
  --from `<PROJECT_ID>.<DATASET>.ext_tb_formato`;

end