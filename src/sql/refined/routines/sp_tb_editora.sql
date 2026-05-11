begin

  -- criando a tabela definitiva de ext_tb_editora
  create or replace table `fernando-data-lab.habitos_leitura_refined.tb_editora` as

  select
    id_editora
    ,nome_editora 
  from `fernando-data-lab.habitos_leitura_raw.ext_tb_editora`;

end