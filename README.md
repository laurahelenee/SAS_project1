# SAS project 1 - Statistical learning vs. Machine learning 
This project will present the different procedures that constitute statistical learning, machine learning, before testing their efficiency and performance through simulated data. 
The project will be coded in SAS, and contain stepwise, forward, backward, forward stagewise, LARS and LASSO procedures. 

## data generating process
proc iml;
	x=normal(j(100,5));
	beta={0.7 1.2 0.9 0.2 1};
	y=x*beta`;
	print(y);
run;
quit;



