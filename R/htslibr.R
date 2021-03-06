#' @useDynLib htslibr
#' @importFrom Rcpp sourceCpp
NULL

#' Read in bam file as a trbl_interval
#' @param filename path to bam file
#' @export
bam_to_df <- function(filename = NULL){
  if(is.null(filename)) filename <- system.file("extdata", "small_sorted.bam", package = "htslibr")
  res <- read_bam(filename)
  res
}
