
-- procedure que carrega todas as tabelas do Google Cloud Storage (GCS)
call `<PROJECT_ID>.<DATASET>.sp_raw_main` ();

-- procedure que carrega todas as tabelas da camada raw pra camada refinada
call `<PROJECT_ID>.<DATASET>.sp_refined_main` ();