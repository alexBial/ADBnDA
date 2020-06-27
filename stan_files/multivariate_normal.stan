data {
  vector[2] mean_;
  matrix[2,2] sigma;
}

generated quantities {
    vector[2] result = multi_normal_rng(mean_,sigma);
}