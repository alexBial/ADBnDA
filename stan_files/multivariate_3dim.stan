data {
  vector[3] mean_;
  matrix[3,3] sigma;
}

generated quantities {
    vector[3] result = multi_normal_rng(mean_,sigma);
}