begin

  -- criando a tabela definitiva de ext_tb_genero
  create or replace table `fernando-data-lab.habitos_leitura_refined.tb_genero` as

  select 
    id_genero
    ,genero
  from `fernando-data-lab.habitos_leitura_raw.ext_tb_genero`;

end