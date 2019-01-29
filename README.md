
# Estimating Posterior Distribution Parameters via Parametric Empirical Bayes in R

Consider the following model:

<a href="https://www.codecogs.com/eqnedit.php?latex=\hat{\beta}_i&space;=&space;\beta_i&space;&plus;&space;\nu_i" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\hat{\beta}_i&space;=&space;\beta_i&space;&plus;&space;\nu_i" title="\hat{\beta}_i = \beta_i + \nu_i" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=\beta_i&space;\Huge&space;|&space;\mu,&space;\sigma^2&space;\overset{\text{ind}}{\sim}&space;N(\mu,&space;\sigma^2)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\beta_i&space;\Huge&space;|&space;\mu,&space;\sigma^2&space;\overset{\text{ind}}{\sim}&space;N(\mu,&space;\sigma^2)" title="\beta_i \Huge | \mu, \sigma^2 \overset{\text{ind}}{\sim} N(\mu, \sigma^2)" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=\hat{\beta}_i&space;\Huge&space;|&space;\beta_i,&space;\tau_i^2&space;\overset{\text{ind}}{\sim}&space;N(\beta_i,&space;\tau_i^2)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\hat{\beta}_i&space;\Huge&space;|&space;\beta_i,&space;\tau_i^2&space;\overset{\text{ind}}{\sim}&space;N(\beta_i,&space;\tau_i^2)" title="\hat{\beta}_i \Huge | \beta_i, \tau_i^2 \overset{\text{ind}}{\sim} N(\beta_i, \tau_i^2)" /></a>

[Morris 1983](https://www.jstor.org/stable/2287098)



## Example



## Unit Tests


## Authors 


Ryan Kessler
<br>Brown University
<br>Email: ryan.edmund.kessler@gmail.com

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details

## References

Morris, Carl N. 1983. Parametric Empirical Bayes Inference: Theory and Applications. Journal of the American Statistical Association 73(381): 47-55. 
