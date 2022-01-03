FROM rhub/r-minimal
RUN apk add gmp-dev
RUN apk add --no-cache bash
RUN installr -d \
   -t "R-dev file automake autoconf linux-headers libxml2-dev" \
   -a "libxml2 icu-libs" `# needed for xml2 and stringr`  \
   gmp \
   tidyverse/readxl `# CRAN version (<=1.3.1) does not compile on alpine` \
   tidyverse \ 
   rondolab/MR-PRESSO \
   MRCIEU/TwoSampleMR@0.5.6

