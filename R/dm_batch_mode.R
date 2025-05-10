#' dm_batch_mode
#'
#' This is the starting script for batch mode analysis
#'
#' @param data_dir    directory holding multiple DLC .csv files for analysis
#' @param results_dir name of the directory that will hold the analysis results
#' @param plots       TRUE to make plots, FALSE to suppress plots
#' @param pk_vl_save  TRUE to create pk_vl_df.csv, FALSE to suppress
#' @return parameters to start single file analysis
#' @examples
#' @export
#'
#'

dm_batch_mode <- function(data_dir, results_dir, plots, pk_vl_save) {

          data_dir            <- paste0(data_dir, "/")
          results_dir         <- paste0(results_dir, "/")

          settings.file       <- list.files(data_dir, pattern = glob2rx("*.txt*"), full.names=FALSE)
          settings_path       <- paste0(data_dir, settings.file)

          video.filename.list <- list.files(data_dir, pattern = glob2rx("*.csv*"), full.names=FALSE)

          # now loop through video.filename.list, analyzing each video one-by-one

            for(i in 1:length(video.filename.list)){
                video.filename    <- video.filename.list[i]
                video.ID          <- str_split(video.filename, "DLC")[[1]][1]
                kin_process(video.filename,
                            video.ID,
                            settings_path,
                            data_dir,
                            results_dir,
                            plots,
                            pk_vl_save)
            }

           # end of loop

     }




