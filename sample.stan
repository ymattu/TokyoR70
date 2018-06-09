data {
  int N ; // num of obs
  real x1[N] ; // independent variable 1
  real x2[N] ; // independent variable 2
  real y[N] ; // dependent variable
}

parameters {
  real b0 ;
  real b1 ;
  real b2 ;
  real<lower=0> sigma ;
}

model {
  for (i in 1:N) {
    y[i] ~ normal(b0 + b1 * x1[i] + b2 * x2[i], sigma) ;
  }
}
