CREATE OR REPLACE PROCEDURE `fernando-data-lab.habitos_leitura_raw.sp_raw_main`()
begin

  call `fernando-data-lab.habitos_leitura_raw.sp_ext_tb_autor` ();
  call `fernando-data-lab.habitos_leitura_raw.sp_ext_tb_editora` ();
  call `fernando-data-lab.habitos_leitura_raw.sp_ext_tb_formato` ();
  call `fernando-data-lab.habitos_leitura_raw.sp_ext_tb_genero` ();
  call `fernando-data-lab.habitos_leitura_raw.sp_ext_tb_nacionalidade` ();
  call `fernando-data-lab.habitos_leitura_raw.sp_ext_tb_livros` ();

end;