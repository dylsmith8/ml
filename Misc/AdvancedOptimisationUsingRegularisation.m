% do not execute

function [jVal, gradient] = costFunction(theta)

	jVal = [code to compute J(theta)];
	gradient(1) = [partial derivative of J(theta)];
	...
	...
	...
	...
	gradient(n + 1) = [partial derivative of J(theta)];


% the above function is then passed into 
fmiunc(costFunction)