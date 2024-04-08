sce <- 
  readRDS("/Volumes/svl/INFIMM_Klamydia/Forskningsdata/Animal experiments/JES/JDI_dyreforsøg/CTF446_scRNAeYFP_NDTN/Analyse/CTF446_seurat_gtnorm.rds")

library(scRNAseqApp)

appconf <- 
  createAppConfig(
    title = "Chlamydia", 
    destinationFolder = "Chlamydia",
    species = "Mus musculus",
    datatype = "scRNAseq")

# appconf$ref$entry$abstract <-
#   "Total lung scRNAseq data. Update notes: v1. Annotation added (predicted by SingleR using mouse RNA seq as the reference)"

dir_path <- 
  file.path("visualization_data")

if (!dir.exists(dir_path)) {
  dir.create(dir_path, recursive = TRUE)
}

createDataSet(
  appconf,
  sce,
  datafolder = dir_path
)
