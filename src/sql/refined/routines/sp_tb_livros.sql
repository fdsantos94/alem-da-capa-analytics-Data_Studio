begin

  -- criando a tabela definitiva de livros com dados limpos
  create or replace table `fernando-data-lab.habitos_leitura_refined.tb_livros` as

  select
    id_livro
    ,nome_livro
    ,id_autor
    ,id_genero
    ,id_editora
    ,paginas
    ,personagens
    ,safe.parse_date('%d/%m/%Y',inicio_leitura) as inicio_leitura
    ,safe.parse_date('%d/%m/%Y',fim_leitura) as fim_leitura
    ,avaliacao
    ,favorito
    ,livro_do_mes
    ,id_nacionalidade
    ,id_formato
    ,abandono
    ,capa_livro
  from `fernando-data-lab.habitos_leitura_raw.ext_tb_livros`;

end