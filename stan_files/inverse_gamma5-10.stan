functions {
  vector tail_delta(vector y, vector theta, real[] x_r, int[] x_i) {
    vector[3] deltas;
    deltas[1] = inv_gamma_cdf(theta[1], exp(y[1]), exp(y[2])) - exp(y[3]);
    deltas[2] = inv_gamma_cdf(theta[2], exp(y[1]), exp(y[2])) - exp(y[3]) - 0.98;
    deltas[3] = exp(y[1])/exp(y[2]) - 7;
    return deltas;
  }
}

data {
  vector[3] y_guess;
  vector[2] theta; 
}

transformed data {

  vector[3] y;
  real x_r[0];
  int x_i[0];
  y = algebra_solver(tail_delta, y_guess, theta, x_r, x_i);
}

generated quantities {
    real alpha = exp(y[1]);
    real beta = exp(y[2]);
}