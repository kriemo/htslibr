#' @useDynLib htslibr
#' @importFrom Rcpp sourceCpp
NULL

#' @export
bam_to_df <- function(filename = NULL){
  if(is.null(filename)) filename <- system.file("extdata", "small_sorted.bam", package = "htslibr")
  res <- read_bam(filename)
  res
}
