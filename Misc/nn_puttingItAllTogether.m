% Do not execute 

% first need to determine the NN ARCHTECTURE
	% i.e. no. of input layers, hidden layers, number of neurons in each layer, number of outputs etc 

% number of INPUT UNITS: dimension of features (x^(i))
% number of OUTPUT UNITS: number of classes (classification classes. y {1, 2,..., n})
	% this must be a vector of binary values denoting what class the network classified 


% REASONABLE DEFAULT
	% USE 1 HIDDEN LAYER 
	% or if >1 hidden layers, have same number of hidden units in EVERY layer(usually more is better but becomes more computationally expensive)


% TRAINING A NN
	% 1) Randomly initialise weights --> usually values close to zero 
	% 2) Implement FP to get hx for any xi --> compute the output vector of y values
	% 3) Implement cost function J 
	% 4) Implement BP to get the partial derivatives with respect to J(theta) --> for each layer 

	% backprop usually implemented ususing a FOR loop:
	for i = 1 : m,
		% peform FP and BP using example (xi, yi) [training example at a time]
		% get activations al and delta terms for l = 2,...., l
	end 

	computePartialDerivativeTerms

	% 5) Use GRADIENT CHECKING to determine the partial derivatives are correct -- then disable once satisfied (NB)
	% 6) Use GRADIENT DESCENT/advanced optimisation with BP to minimise J(theta) as function of parameters theta
			% can in theory be stuck in a local minima... but not too common in practice 