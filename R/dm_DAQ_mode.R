#' dm_DAQ_mode
#'
#' This is the starting script for DAQ mode analysis
#'
#' @param plots TRUE to make plots, FALSE to suppress plots
#' @param pk_vl_save TRUE to create pk_vl_df.csv, FALSE to suppress
#' @return parameters to start kin DAQ analysis
#' @examples
#' @export
#'
#'

dm_DAQ_mode <- function(plots, pk_vl_save) {
       data_dir            <- "./"
       video.filename.list <- list.files(data_dir, pattern = glob2rx("*.csv*"), full.names=FALSE)
       video.filename      <- video.filename.list[1]
       video.ID            <- str_split(video.filename, "DLC")[[1]][1]
       settings.file       <- list.files(data_dir, pattern = glob2rx("*.txt*"), full.names=FALSE)
       settings_path       <- settings.file
       results_dir         <- "./"

       kin_process(video.filename,
                   video.ID,
                   settings_path,
                   data_dir,
                   results_dir,
                   plots,
                   pk_vl_save)

    }
