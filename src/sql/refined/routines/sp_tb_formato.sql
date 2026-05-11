begin

  -- criando a tabela definitiva de ext_tb_formato
  create or replace table `fernando-data-lab.habitos_leitura_refined.tb_formato` as

  select
    id_formato
    ,formato
  from `fernando-data-lab.habitos_leitura_raw.ext_tb_formato`;

end