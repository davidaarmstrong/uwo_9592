{smcl}
{* *! version 1.0  4 Jan 2024}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "Help compare_cv (if installed)" "help changeSig"}{...}
{viewerjumpto "Syntax" "changeSig##syntax"}{...}
{viewerjumpto "Description" "changeSig##description"}{...}
{viewerjumpto "Remarks" "changeSig##remarks"}{...}
{viewerjumpto "Examples" "changeSig##examples"}{...}
{viewerjumpto "Authors and Support" "changeSig##author"}{...}
{title:Title}
{phang}
{bf:changeSig} {hline 2} Find the values on the x-axis where an interaction effect changes significance. 

{marker syntax}{...}
{title:Syntax}
{p 8 17 2}
{cmdab:changeSig}
{cmd: model1 model2,}
[{it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:{opt Xind}} Integer giving the column number of the coefficient on the constitutive term for the first variable. 

{synopt:{opt Zind}} Integer giving the column number of the coefficient on the constitutive term for the second variable. 

{synopt:{opt Multind}} Integer giving the column number of the coefficient on the multiplicative term. 

{syntab:Optional}

{synopt:{opt lox(#)}} Lower bound for search for X-variable

{synopt:{opt highx(#)}} Upper bound for search for X-variable

{synopt:{opt loz(#)}} Lower bound for search for Z-variable

{synopt:{opt highz(#)}} Upper bound for search for Z-variable

{synopt:{opt tol(#)}} Numerical tolerance on root finder

{synopt:{opt iter(#)}} Integer giving the maximum number of iterations

{synopt:{opt clev(#)}} Confidence level - default is 95% 



{synoptline}
{p2colreset}{...}
{p 4 6 2}

{marker description}{...}
{title:Description}
{pstd}{bf: changeSig} finds the values for a conditioning variable where the interaction effect changes significance. 

{marker remarks}{...}
{title:Remarks}
{pstd}
Assuming a regression model of the following form: y = b_1X + b_2Z + b_3XZ + ... + e, we can find where the upper and lower 95% confidence bounds for the conditional effects of X (b_1 + b_3Z) and Z (b_2 + b_3X) cross zero.  The function returns the values for each conditional effect. You can find the numbers by doing: mat list e(b) after estimating the regression. 
{p_end}

{marker examples}{...}
{title:Examples}
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. regress mpg c.weight##c.displacement gear_ratio foreign headroom}{p_end}
{phang2}{cmd:. changeSig, x(1) z(2) m(3)}{p_end}

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
Clark,  William R and Matt Golder 2023.  {it:Interaction Models: Specification and Interpretation} New York: Cambridge University Press. 
{p_end}


