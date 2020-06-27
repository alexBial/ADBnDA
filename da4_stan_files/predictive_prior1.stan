data {
  int M;
}
generated quantities {
  real lambda=fabs(normal_rng(0,7601));
  int y_sim[M];
  for (k in 1:M) {
    y_sim[k] = poisson_rng(lambda);
  }
}