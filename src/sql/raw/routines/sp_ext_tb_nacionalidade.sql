begin

  -- criando a tabela externa mapeada para o storage
  create or replace external table `fernando-data-lab.habitos_leitura_raw.ext_tb_nacionalidade`
    (
      id_nacionalidade int64
      ,nacionalidade string
    )
  options 
    (
      format = 'csv'
      ,uris = ['gs://datalake-habitos-leitura/raw/tb_nacionalidade.csv']
      ,encoding = 'ISO-8859-1'
      ,skip_leading_rows = 1
      ,field_delimiter = ';'
    );

  -- testando a leitura
  --select 
  --  *
  --from `fernando-data-lab.habitos_leitura_raw.ext_tb_nacionalidade`;

end