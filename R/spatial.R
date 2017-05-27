# geolevel1 - provinsi
# geolevel2 - kota
# geolevel3 - kecamatan
# geolevel4 - kelurahan
# geolevel5 - rw

id_map <- function (region = "jakarta", level = "default") {

  if (region == "jakarta") {
    if (level == "rw"|level == 5) {
      reg <- readRDS(system.file("data", "spatial",
                                 "jakarta_rw.rds", package = "indonesia"))
    }
    else if (level == "default"|level == "kelurahan"|level == 4) {
      reg <- readRDS(system.file("data", "spatial",
                                 "jakarta_kelurahan.rds", package = "indonesia"))
    }
    else if (level == "kecamatan"|level == 3) {
      reg <- readRDS(system.file("data", "spatial",
                                 "jakarta_kecamatan.rds", package = "indonesia"))
    } else {
      message("Error : for Jakarta region, level should be 'kecamatan', 'kelurahan' or 'rw'")
    }
  }

  else if (region == "indonesia") {
    if (level == "kota"|level == 2) {
      reg <- readRDS(system.file("data", "spatial",
                                 "indonesia_kota.rds", package = "indonesia"))
    }
    else if (level == "default"|level == "provinsi"|level == 1) {
      reg <- readRDS(system.file("data", "spatial",
                                 "indonesia_provinsi.rds", package = "indonesia"))
    } else {
      message("Error: for Indonesia region, level should be 'provinsi' or 'kota'")
    }
  }

  return(reg)
}

