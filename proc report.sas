*If at least 1 char bar then will get 1 row per obser in the report;
proc report data=sashelp.baseball;
column Division CrHits;
run;

*If all numeric vars it will sum each of those up and return one number(even dates);
proc report data=sashelp.baseball;
column CrHome CrHits;
run;

*DEFINE Statement (ORDER);
*This order the CrHits column from least to greatest, and change the column name into "Career Hits Ordered"  ; 
proc report data=sashelp.baseball;
column CrHome CRHits;
define CrHits /ORDER 'Career Hits Ordered';
run;

*GROUP VARs; 
*Group the salaries by League, sums up the salary for each league;
proc report data=sashelp.baseball MISSING;
column League Salary;
define League /GROUP;
run;

*DEFINE Statement (Analysis);
*Analysis default is SUM, now change it to "MEAN";
proc report data=sashelp.baseball MISSING;
column League Salary;
define League /GROUP;
define Salary / Analysis MEAN;
run;