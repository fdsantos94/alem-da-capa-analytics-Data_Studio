CREATE OR REPLACE PROCEDURE `fernando-data-lab.habitos_leitura_refined.sp_refined_main`()
begin

  call `fernando-data-lab.habitos_leitura_refined.sp_tb_autor` ();
  call `fernando-data-lab.habitos_leitura_refined.sp_tb_editora` ();
  call `fernando-data-lab.habitos_leitura_refined.sp_tb_formato` ();
  call `fernando-data-lab.habitos_leitura_refined.sp_tb_genero` ();
  call `fernando-data-lab.habitos_leitura_refined.sp_tb_nacionalidade` ();
  call `fernando-data-lab.habitos_leitura_refined.sp_tb_livros` ();

end;