begin

  -- criando a tabela externa mapeada para o storage
  create or replace external table `<PROJECT_ID>.<DATASET>.ext_tb_livros` 
    (
      id_livro int64
      ,nome_livro string
      ,id_autor int64
      ,autor string
      ,id_genero int64
      ,genero string
      ,id_editora int64
      ,editora string
      ,paginas string
      ,personagens string
      ,inicio_leitura string
      ,fim_leitura string
      ,avaliacao int64
      ,favorito int64
      ,livro_do_mes int64
      ,id_nacionalidade int64
      ,nacionalidade string
      ,id_formato int64
      ,formato string
      ,abandono int64
      ,capa_livro string
    )
  options
    (
      format = 'csv'
      ,uris = ['gs://datalake.../tb_livros.csv']
      ,skip_leading_rows = 1
      ,field_delimiter = ';'
    );

  -- testando a leitura
  --select 
  --*
  --from `<PROJECT_ID>.<DATASET>.ext_tb_livros`;

end