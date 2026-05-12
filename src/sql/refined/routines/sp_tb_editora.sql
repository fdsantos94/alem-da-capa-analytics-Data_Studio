begin

  -- criando a tabela definitiva de ext_tb_editora
  create or replace table `<PROJECT_ID>.<DATASET>.tb_editora` as

  select
    id_editora
    ,nome_editora 
  from `<PROJECT_ID>.<DATASET>.ext_tb_editora`;

end