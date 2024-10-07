{smcl}
{* *! version 1.0  4 Jan 2024}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "Help compare_cv (if installed)" "help compare_cv"}{...}
{vieweralsosee "Help cv_kfold (if installed)" "help cv_kfold"}{...}
{viewerjumpto "Syntax" "compare_cv##syntax"}{...}
{viewerjumpto "Description" "compare_cv##description"}{...}
{viewerjumpto "Remarks" "compare_cv##remarks"}{...}
{viewerjumpto "Examples" "compare_cv##examples"}{...}
{viewerjumpto "Authors and Support" "compare_cv##author"}{...}
{title:Title}
{phang}
{bf:compare_cv} {hline 2} Compare Two Models with k-fold Cross-validation. 

{marker syntax}{...}
{title:Syntax}
{p 8 17 2}
{cmdab:compare_cv}
{cmd: model1 model2,}
[{it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}

{synopt:{opt model1}} Stored model results the following models: {bf:regress}, {bf:logit}, {bf:probit}, {bf:logit}, {bf:cloglog}, {bf:poisson}, {bf:nbreg}, {bf:mlogit}, {bf:mprobit}, {bf:ologit}, and {bf:oprobit}.

{synopt:{opt model2}} Stored model results the following models: {bf:regress}, {bf:logit}, {bf:probit}, {bf:logit}, {bf:cloglog}, {bf:poisson}, {bf:nbreg}, {bf:mlogit}, {bf:mprobit}, {bf:ologit}, and {bf:oprobit}.  Should be the same kind of model as {it:model1}. 

{syntab:Optional}

{synopt:{opt k(#)}}  Integer value giving the number of folds in each k-fold cross-validation run.  Default value is 10. 

{synopt:{opt r(#)}}  Integer value giving the number of repeated runs of the cross-validation routine. 

{synopt:{opt seed1(#)}} Integer giving the seed of the cross-validation for the first model. 

{synopt:{opt seed2(#)}} Integer giving the seed of the cross-validation for the second model. 



{synoptline}
{p2colreset}{...}
{p 4 6 2}

{marker description}{...}
{title:Description}
{pstd}{bf: compare_cv} Takes two estimated models and calculates the (repeated) k-fold cross-validation statistic for all models.  After doing this, it identifies the proportion of times that model 2 is better than model 1.  

{marker remarks}{...}
{title:Remarks}
{pstd}The proportion of times model 2 is better than model 1 is calculated by taking the proportion of times that the likelihood for model 2 is greater than the likelihood for model 1 if the model is not an OLS regression.  If the model was estimated with {bf:regress}, the calculation is the proportion of times the RMSE for model 2 is smaller than the one for model 1. 

{pstd}

{marker examples}{...}
{title:Examples}
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. regress mpg weight displacement gear_ratio foreign headroom}{p_end}
{phang2}{cmd:. est store m1}{p_end}
{phang2}{cmd:. regress mpg c.weight##c.displacement gear_ratio foreign headroom}{p_end}
{phang2}{cmd:. est store m2}{p_end}
{phang2}{cmd:. compare_cv m1 m2, r(100)}{p_end}

{marker author}{...}
{title:Authors and support}

{phang}{bf:Author:}{break}
 	Dave Armstrong, {break}
	Western University {break}
	London, ON, Canada
{p_end}
{phang}{bf:Support:} {break}
	{browse "mailto:davearmstrong.ps@gmail.com":davearmstrong.ps@gmail.com}
{p_end}


