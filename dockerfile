FROM rocker/rstudio


WORKDIR /app

RUN apt-get update 
RUN apt-get install -y --no-install-recommends build-essential python3-pip python3-dev


RUN apt-get update -y


COPY requirements.txt /app/requirements.txt
RUN pip3 install -r requirements.txt


RUN apt-get install -y cmake

RUN apt-get install -y libfontconfig1-dev
RUN apt-get install -y libxml2-dev
RUN apt-get install -y libmagick++-dev
RUN apt-get install -y libsodium-dev
RUN apt-get install -y libudunits2-dev
RUN apt-get install -y libharfbuzz-dev libfribidi-dev
RUN apt-get install -y zlib1g-dev



RUN R -e "install.packages('DT',dependencies=TRUE, repos='http://cran.rstudio.com/')"

RUN R -e "install.packages('https://cran.r-project.org/src/contrib/Archive/ConvCalendar/ConvCalendar_1.2.tar.gz',repos=NULL, type='source')"
RUN R -e "options(timeout = max(1000, getOption('timeout')))"
RUN R -e "install.packages('shinydashboardPlus',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('future',dependencies=TRUE, repos='http://cran.rstudio.com/')"



RUN R -e "install.packages('BH',dependencies=TRUE, repos='http://cran.rstudio.com/')"

RUN R -e "install.packages('shinyfullscreen',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('shinymanager',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('shinyjs',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('summarytools',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('doParallel',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('markdown',dependencies=TRUE, repos='http://cran.rstudio.com/')"

RUN R -e "install.packages('showtext',dependencies=TRUE, repos='http://cran.rstudio.com/')"



RUN R -e "install.packages('shinythemes',dependencies=TRUE, repos='http://cran.rstudio.com/')"

RUN R -e "install.packages('plumber',dependencies=TRUE, repos='http://cran.rstudio.com/')"

RUN R -e "install.packages('GGally',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('dbplot',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('benchmarkme',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('tidypredict',dependencies=TRUE, repos='http://cran.rstudio.com/')"

RUN R -e "install.packages('openxlsx',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('corrr',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('rnaturalearth',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('collapse',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('ggcorrplot',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('scatterPlotMatrix',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('ggthemes',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('rworldmap',dependencies=TRUE, repos='http://cran.rstudio.com/')"

RUN R -e "install.packages('rgeos',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('nptest',dependencies=TRUE, repos='http://cran.rstudio.com/')"


RUN R -e "install.packages('terra',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('translations',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('zeallot',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('modeldb',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('raster',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('s2',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "devtools::install_github('ropensci/rnaturalearthhires')"
RUN R -e "devtools::install_github('rstudio/gridlayout')"
RUN R -e "install.packages('lme4',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('nycflights13',dependencies=TRUE, repos='http://cran.rstudio.com/')"




# RUN R -e "install.packages('factoextra',dependencies=TRUE, repos='http://cran.rstudio.com/')"
# RUN R -e "install.packages('thematic',dependencies=TRUE, repos='http://cran.rstudio.com/')"
# RUN R -e "install.packages('sparklyr',dependencies=TRUE, repos='http://cran.rstudio.com/')"


# CMD ["python", "./app.py"]