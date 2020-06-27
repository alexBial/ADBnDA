data {
  vector[4] mean_;
  matrix[4,4] sigma;
}
generated quantities {
    vector[4] result = multi_normal_rng(mean_,sigma);
}