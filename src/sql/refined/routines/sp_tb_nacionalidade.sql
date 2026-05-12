begin

  -- criando a tabela definitiva de ext_tb_nacionalidade
  create or replace table `<PROJECT_ID>.<DATASET>.tb_nacionalidade` as

  select 
    id_nacionalidade
    ,nacionalidade 
  from `<PROJECT_ID>.<DATASET>.ext_tb_nacionalidade`;

end