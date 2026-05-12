begin

  -- criando a tabela externa mapeada para o storage
  create or replace external table `<PROJECT_ID>.<DATASET>.ext_tb_autor` 
    (
      id_autor int64
      ,nome_autor string
      ,imagem_autor string
    )
  options
    (
      format = 'csv'
      ,uris = ['gs://datalake.../raw/tb_autor.csv']
      ,encoding = 'ISO-8859-1'
      ,skip_leading_rows = 1
      ,field_delimiter = ';'
    );

  -- testando a leitura
  --select 
  --  *
  --from `<PROJECT_ID>.<DATASET>.ext_tb_autor`;

end