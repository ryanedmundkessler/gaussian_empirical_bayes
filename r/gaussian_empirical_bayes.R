estimate_hyperparameters <- function(beta, tau_sq, tol = 1e-09) {
  
    w              <- rep(1, length(beta))
    mu_sigma_guess <- calculate_mu_sigma_sq(beta = beta, tau_sq = tau_sq, w = w)
    sigma_sq_guess <- mu_sigma_guess$sigma_sq
    sigma_sq_diff  <- 1
    iter           <- 0 
    
    while (sigma_sq_diff > tol) {
        iter           <- iter + 1
        w              <- (tau_sq + sigma_sq_guess)^(-1)
        mu_sigma_guess <- calculate_mu_sigma_sq(beta = beta, tau_sq = tau_sq, w = w)
        
        sigma_sq_diff  <- abs(mu_sigma_guess$sigma_sq - sigma_sq_guess)
        sigma_sq_guess <- mu_sigma_guess$sigma_sq
    }
    
    return_list <- list(mu       = mu_sigma_guess$mu,
                        sigma_sq = mu_sigma_guess$sigma_sq,
                        num_iter = iter)
    return(return_list)
}

calculate_mu_sigma_sq <- function(beta, tau_sq, w) {
  
    n           <- length(beta)
    dof_adj     <- (n / (n - 1))
    mu          <- weighted.mean(beta, w)
    var_eq      <- dof_adj * (beta - mu)^2 - tau_sq
    sigma_sq    <- max(0, weighted.mean(var_eq, w))

    return_list <- list(mu       = mu,
                        sigma_sq = sigma_sq)
    return(return_list)
}

estimate_posterior_parameters <- function(beta, tau_sq, mu, sigma_sq) {

    n           <- length(beta)
    dof_adj     <- ((n - 3) / (n - 1))
    alpha       <- dof_adj * (tau_sq / (tau_sq + sigma_sq))
    mu          <- alpha * mu + (1 - alpha) * beta
    sigma_sq    <- tau_sq * (1 - alpha)

    return_list <- list(mu       = mu,
                        sigma_sq = sigma_sq)
    return(return_list)
}
