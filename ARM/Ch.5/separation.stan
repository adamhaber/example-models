data {
  int<lower=0> N;
  int<lower=0,upper=1> y[N];
  matrix[N,1] x;
}
parameters {
  real alpha;
  vector[1] beta;
}
model {
  y ~ bernoulli_logit_glm(x, alpha, beta);
}
