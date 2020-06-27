data {
  real degrees;
  real mean_;
  real sigma;
}

generated quantities {
    real student = student_t_rng(degrees, mean_, sigma);
}