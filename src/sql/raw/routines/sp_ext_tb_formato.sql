begin

  -- criando a tabela externa mapeada para o storage
  create or replace external table `fernando-data-lab.habitos_leitura_raw.ext_tb_formato` 
    (
      id_formato int64
      ,formato string
    )
  options
    (
      format = 'csv'
      ,uris = ['gs://datalake-habitos-leitura/raw/tb_formato.csv']
      ,encoding = 'ISO-8859-1'
      ,skip_leading_rows = 1
      ,field_delimiter = ';'
    );

  -- testando a leitura
  --select 
  --  *
  --from `fernando-data-lab.habitos_leitura_raw.ext_tb_formato`;

end