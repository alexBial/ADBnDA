data {
  real alpha;
  real mean_;
  real phi;
}

generated quantities {
    
    real neg_bin_con = neg_binomial_rng(alpha, alpha/mean_);
    real neg_bin_dis = neg_binomial_2_rng(mean_, phi);
    
    real poisson_con = poisson_rng(neg_bin_con);
    real poisson_dis = poisson_rng(neg_bin_dis);   
}