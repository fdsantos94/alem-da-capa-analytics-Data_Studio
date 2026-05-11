begin

  -- criando a tabela definitiva de ext_tb_autor
  create or replace table `fernando-data-lab.habitos_leitura_refined.tb_autor` as

  select
    id_autor
    ,nome_autor
    ,imagem_autor
  from `fernando-data-lab.habitos_leitura_raw.ext_tb_autor`;

end