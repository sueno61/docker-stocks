options(repos = c(CRAN = "http://cran.r-project.org"))

Sys.setenv(DOWNLOAD_STATIC_LIBV8 = 1)
install.packages('V8', dependencies = TRUE)

install.packages(c('githubinstall','rstan','ggmcmc','bayesplot','brms','ranger','fmsb','partykit'), dependencies = TRUE)
