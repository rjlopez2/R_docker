# Define the R version to be installed from rocker project
FROM rocker/verse:4.1.2



# set timestamp for package versions installations
ENV MRAN_BUILD_DATE=2021-11-25

# install CRAN R packages from the MCRAN repo:
RUN install2.r -r https://cran.microsoft.com/snapshot/${MRAN_BUILD_DATE} \
    --error \
    pacman \
    here \
    pander

# set the working directory inside the container
WORKDIR /home/rstudio
