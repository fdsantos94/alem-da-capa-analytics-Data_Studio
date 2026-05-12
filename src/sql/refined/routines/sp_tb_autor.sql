begin

  -- criando a tabela definitiva de ext_tb_autor
  create or replace table `<PROJECT_ID>.<DATASET>.tb_autor` as

  select
    id_autor
    ,nome_autor
    ,imagem_autor
  from `<PROJECT_ID>.<DATASET>.ext_tb_autor`;

end