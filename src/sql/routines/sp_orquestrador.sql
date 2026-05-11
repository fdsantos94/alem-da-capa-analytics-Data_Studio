
-- procedure que carrega todas as tabelas do Google Cloud Storage (GCS)
call `fernando-data-lab.habitos_leitura_raw.sp_raw_main` ();

-- procedure que carrega todas as tabelas da camada raw pra camada refinada
call `fernando-data-lab.habitos_leitura_refined.sp_refined_main` ();