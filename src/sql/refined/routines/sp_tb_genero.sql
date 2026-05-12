begin

  -- criando a tabela definitiva de ext_tb_genero
  create or replace table `<PROJECT_ID>.<DATASET>.tb_genero` as

  select 
    id_genero
    ,genero
  from `<PROJECT_ID>.<DATASET>.ext_tb_genero`;

end