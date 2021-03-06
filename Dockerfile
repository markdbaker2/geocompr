FROM rocker/geospatial
RUN R -e "remotes::install_github('r-spatial/lwgeom')"
RUN R -e "remotes::install_github('geocompr/geocompkg')"
RUN R -e "remotes::install_cran('magick')"
RUN apt-get update && \
  # set repos to CRAN to allow package updates
    echo "options(repos = c(CRAN = 'https://cran.rstudio.com/'), download.file.method = 'libcurl')" >> /usr/local/lib/R/etc/Rprofile.site 
