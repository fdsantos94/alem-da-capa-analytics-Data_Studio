CREATE OR REPLACE PROCEDURE `<PROJECT_ID>.<DATASET>.sp_refined_main`()
begin

  call `<PROJECT_ID>.<DATASET>.sp_tb_autor` ();
  call `<PROJECT_ID>.<DATASET>.sp_tb_editora` ();
  call `<PROJECT_ID>.<DATASET>.sp_tb_formato` ();
  call `<PROJECT_ID>.<DATASET>.sp_tb_genero` ();
  call `<PROJECT_ID>.<DATASET>.sp_tb_nacionalidade` ();
  call `<PROJECT_ID>.<DATASET>.sp_tb_livros` ();

end;