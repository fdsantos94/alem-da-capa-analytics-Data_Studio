begin

  -- criando a tabela definitiva de ext_tb_nacionalidade
  create or replace table `fernando-data-lab.habitos_leitura_refined.tb_nacionalidade` as

  select 
    id_nacionalidade
    ,nacionalidade 
  from `fernando-data-lab.habitos_leitura_raw.ext_tb_nacionalidade`;

end