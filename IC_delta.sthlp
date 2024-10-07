{smcl}
{* *! version 1.0  4 Jan 2024}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "Help compare_cv (if installed)" "help IC_delta"}{...}
{viewerjumpto "Syntax" "IC_delta##syntax"}{...}
{viewerjumpto "Description" "IC_delta##description"}{...}
{viewerjumpto "Remarks" "IC_delta##remarks"}{...}
{viewerjumpto "Examples" "IC_delta##examples"}{...}
{viewerjumpto "Authors and Support" "IC_delta##author"}{...}
{viewerjumpto "References" "IC_delta##references"}{...}
{title:Title}
{phang}
{bf:IC_delta} {hline 2} Compare Two Models with k-fold Cross-validation. 

{marker syntax}{...}
{title:Syntax}
{p 8 10 2}
{cmdab:IC_delta}
{cmd: ...,}

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}

{synopt:{opt ...}} A {it:namelist} of models whose IC values will be calculated. 

{synoptline}
{p2colreset}{...}
{p 4 6 2}

{marker description}{...}
{title:Description}
{pstd}{bf: IC_delta} Calculates AIC, AICc and BIC for a set of models.  The function assumes that r(n_param) holds the number of parameters estimated in the model, r(N) is the number of observations in the model and r(ll) is the model's log-likelihood value. 

{marker remarks}{...}
{title:Remarks}
{p2colreset}{...}
{p 4 4 2}
The three measures used are defined as follows, assuming LL is the log-likelihood, N is the number of observations and K is the number of parameters estimates in the model: {break}
{break}
AIC = -2*LL + 2*K {break}
AICc = -2*LL + 2*K + (2*K*(K-1))/(N - K - 1) {break}
BIC = -2*LL + K*log(N) {break}
{break}
The function calculates the difference between each model and the model with the minimum value in the set of models. 

{marker examples}{...}
{title:Examples}
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. reg mpg weight foreign headroom}{p_end}
{phang2}{cmd:. est store m1}{p_end}
{phang2}{cmd:. reg mpg displacement gear_ratio}{p_end}
{phang2}{cmd:. est store m2}{p_end}
{phang2}{cmd:. reg mpg price turn}{p_end}
{phang2}{cmd:. est store m3}{p_end}
{phang2}{cmd:. IC_delta m1 m2 m3}{p_end}

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
Burnham, Kenneth P. and David R. Anderson.  2004.  "Multimodel Inference: Understanding AIC and BIC in Model Selection" {it: Sociological Methods & Research} 33(2): 261-304. 
{p_end}

