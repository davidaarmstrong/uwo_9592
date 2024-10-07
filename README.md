# uwo_9592
This is a Stata package that contains functions for UWO 9592: Maximum Likelihood Estimation.  You can install the package with the following command in Stata: 

```
net install uwo_9592, from("https://raw.githubusercontent.com/davidaarmstrong/uwo_9592/refs/heads/main/")
```

The functions contained in here are: 

- `changeSig` - In a linear regression model (estimated using `regress`) with an interaction term, this identified the value of the conditioning variable at which the upper and lower confidence bounds of the conditional effect become zero. 
- `clarke_binary` - Performs Clarke's distribution-free test of nonnested models for logit, probit or cloglog GLMs. 
- `compare_cv` - Compares two models using k-fold cross-validation identifying the proportion of times in repeated cross-validation that the second model is superior to the first.  
- `IC_delta` - Calculates the $\delta$ values for AIC, AICc and BIC.  These give the difference between the best model in the set and each other model on these measures. 