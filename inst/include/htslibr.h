#ifndef htslibr__htslibr_H
#define htslibr__htslibr_H

#include <Rcpp.h>
#include "htslib/hts.h"
#include "htslib/sam.h"
#include "htslib/bgzf.h"

// [[Rcpp::plugins(cpp11)]]
using namespace Rcpp ;

// class for handling bam file opening and closing
class BamReader {
public:
  samFile* in;
  hts_idx_t* idx;
  BGZF* bz;
  bam_hdr_t* header ;
  BamReader(const std::string& bampath) ;

  ~BamReader(){
    hts_idx_destroy(idx);
    sam_close(in);
  }
};


#endif
