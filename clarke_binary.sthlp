{smcl}
{* *! version 1.0  4 Jan 2024}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "Help compare_cv (if installed)" "help clarke_binary"}{...}
{viewerjumpto "Syntax" "clarke_binary##syntax"}{...}
{viewerjumpto "Description" "clarke_binary##description"}{...}
{viewerjumpto "Remarks" "clarke_binary##remarks"}{...}
{viewerjumpto "Examples" "clarke_binary##examples"}{...}
{viewerjumpto "Authors and Support" "clarke_binary##author"}{...}
{viewerjumpto "References" "clarke_binary##references"}{...}
{title:Title}
{phang}
{bf:clarke_binary} {hline 2} Compare Two Models with k-fold Cross-validation. 

{marker syntax}{...}
{title:Syntax}
{p 8 10 2}
{cmdab:clarke_binary}
{cmd: model1 model2,}

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}

{synopt:{opt model1}} Stored model results the following models: {bf:logit}, {bf:probit}, {bf:cloglog} or {bf:glm} with {it:logit}, {it:probit} or {it:cloglog} link.

{synopt:{opt model2}} Stored model results the following models: {bf:logit}, {bf:probit}, {bf:cloglog} or {bf:glm} with {it:logit}, {it:probit} or {it:cloglog} link.  Should be of the same type as {it:model1}. 

{synoptline}
{p2colreset}{...}
{p 4 6 2}

{marker description}{...}
{title:Description}
{pstd}{bf: clarke_binary} Calculates Clarke's distribution-free test of non-nested models for binary dependent variables. 

{marker remarks}{...}
{title:Remarks}
{p2colreset}{...}
{p 4 4 2}
In each model, the log-likelihood for each individual observation is calculated as: LL_i = y_i*log(p_i) + (1-y_i)log(1-p_i).  Then, the statistic B is calculated as the number of times LL_i for {it:model1} is bigger than the LL_i for {it:model2}.  We can calculate the p-value of the test as the the PMF of the Binomial distribution at B for N=#obs and p=.5.  If p > .95, {it:model1} is significantly better than {it:model2}; if p < .05, {it:model2} is significantly better than {it:model1} otherwise, the two models cannot be statistically distinguished. 

{marker examples}{...}
{title:Examples}
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. gen expensive = price > 10000}{p_end}
{phang2}{cmd:. logit expensive weight foreign headroom}{p_end}
{phang2}{cmd:. est store m1}{p_end}
{phang2}{cmd:. logit expensive displacement gear_ratio}{p_end}
{phang2}{cmd:. est store m2}{p_end}
{phang2}{cmd:. clarke_binary m1 m2}{p_end}

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

{marker references}{...}
{title:References}

{phang}
Clarke, Kevin A.  2007.  "A Simple Distribution-free Test for Nonnested Model Selection" {it:Political Analysis} 15(3): 347-363. 
{p_end}

