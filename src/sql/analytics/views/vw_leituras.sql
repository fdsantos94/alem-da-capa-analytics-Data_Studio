select
  a.nome_livro
  ,a.inicio_leitura
  ,a.fim_leitura
  ,a.avaliacao
  ,a.favorito
  ,cast(a.paginas as int64) as paginas
  ,a.personagens
  ,a.capa_livro
  ,a.livro_do_mes
  ,b.nome_autor
  ,b.imagem_autor
  ,c.nome_editora
  ,d.formato
  ,e.nacionalidade
  ,a.abandono
  ,f.genero
from `<PROJECT_ID>.<DATASET>.tb_livros` as a
left join `<PROJECT_ID>.<DATASET>.tb_autor` as b on a.id_autor = b.id_autor
left join `<PROJECT_ID>.<DATASET>.tb_editora` as c on a.id_editora = c.id_editora
left join `<PROJECT_ID>.<DATASET>.tb_formato` as d on a.id_formato = d.id_formato
left join `<PROJECT_ID>.<DATASET>.tb_nacionalidade` as e on a.id_nacionalidade = e.id_nacionalidade
left join `<PROJECT_ID>.<DATASET>.tb_genero`as f on a.id_genero = f.id_genero