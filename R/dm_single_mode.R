#' dm_single_mode
#'
#' This is the starting script for single file mode analysis
#'
#' @param data_dir    directory holding DLC .csv file for analysis
#' @param video.ID.no the video ID of the file to analyze
#' @param plots       TRUE to make plots, FALSE to suppress plots
#' @param pk_vl_save  TRUE to create pk_vl_df.csv, FALSE to suppress
#' @return parameters to start single file analysis
#' @examples
#' @export
#'
#'

dm_single_mode <- function(data_dir, video.ID.no, plots, pk_vl_save) {

       data_dir            <- paste0(data_dir, "/")

       video.ID            <- video.ID.no
       video.ID.DLC        <- paste0(video.ID.no, "DLC")
       video.filename.list <- list.files(data_dir, pattern = glob2rx("*.csv*"), full.names=FALSE)
       video.filename.df   <- as.data.frame(video.filename.list)
       video.filename1     <- video.filename.df %>% filter(grepl(video.ID.DLC, video.filename.list))
       video.filename      <- video.filename1[[1]]

       settings.file       <- list.files(data_dir, pattern = glob2rx("*.txt*"), full.names=FALSE)
       settings_path       <- paste0(data_dir, settings.file)

       results_dir         <- "./"

       kin_process(video.filename,
                   video.ID,
                   settings_path,
                   data_dir,
                   results_dir,
                   plots,
                   pk_vl_save)

    }




