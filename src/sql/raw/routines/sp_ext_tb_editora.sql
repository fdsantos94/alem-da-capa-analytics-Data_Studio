begin

  -- criando a tabela externa mapeada para o storage
  create or replace external table `fernando-data-lab.habitos_leitura_raw.ext_tb_editora` 
    (
      id_editora int64
      ,nome_editora string
    )
  options
    (
      format = 'csv'
      ,uris = ['gs://datalake-habitos-leitura/raw/tb_editora.csv']
      ,encoding = 'ISO-8859-1'
      ,skip_leading_rows = 1
      ,field_delimiter = ';'
    );

  -- testando a leitura
  --select 
  --  *
  --from `fernando-data-lab.habitos_leitura_raw.ext_tb_editora`;

end