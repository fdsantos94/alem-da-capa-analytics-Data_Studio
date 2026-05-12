begin

  -- criando a tabela definitiva de ext_tb_formato
  create or replace table `<PROJECT_ID>.<DATASET>.tb_formato` as

  select
    id_formato
    ,formato
  from `<PROJECT_ID>.<DATASET>.ext_tb_formato`;

end