% do not execute
% Advanced logisic regression optimisation  

function [jVal, gradient] = costFunction (theta)

	% compute the cost function J(theta) returned as jVal
	jval = (theta(1) - 5) ^ 2 + ......
		   (theta(2) - 5) ^ 2;

	% 2 x 1 gradient vector correspond to the 2 partial derivative terms (see notes)
	gradient = zeros(2, 1);
	gradient(1) = 2 * (theta(1) - 5);
	gradient(2) = 2 * (theta(2) - 5);



	% after this cost function has been implemented, we can call it from
	%

	% options we want to set
	options = optimset('GradObj', 'on', 'MaxIter', 100);
	% initial value for theta
	initialTheta = zeros(2, 1);
	% 
	[optTheta, functionVal, exitFlag] ...
		   % "function minimisation unconstrained"
		= fminunc(@costFunction, initialTheta, options); 
		% @ gives a pointer to the function defined above 
		% exit flag tells us how fminunc ran 

	% initialTheta must be R^d where d >= 2 (must be a 2 dimensional vector or higher or it may
    % not return the expected results) -- see documentation 
end 