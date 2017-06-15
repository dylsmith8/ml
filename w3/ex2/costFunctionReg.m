function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

	% Ignore the first value in the matrix 
	theta_ignore = [0; theta(2 : end, :)];

	% Cost function 
	firstTerm = -y' * (log(sigmoid(X * theta)));
	secondTerm = -1 .* ((1 - y') * log(1 - (sigmoid(X  * theta))));
	unregularisedCostFunction = (1 / m) * sum(firstTerm + secondTerm);

	regularisationTerm = (lambda / (2 * m)) * sum(theta_ignore .^2);

	J = unregularisedCostFunction + regularisationTerm;

	% Gradient 
	unregularisedGrad = (1 / m) * X' * (sigmoid((X * theta)) - y);
	regularisationTermForGrad = (lambda / m) * (theta_ignore);

	grad = unregularisedGrad + regularisationTermForGrad;

% =============================================================

end
