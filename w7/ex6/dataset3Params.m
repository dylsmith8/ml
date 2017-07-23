function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
	C = 1;
	sigma = 0.3;

	% ====================== YOUR CODE HERE ======================
	% Instructions: Fill in this function to return the optimal C and sigma
	%               learning parameters found using the cross validation set.
	%               You can use svmPredict to predict the labels on the cross
	%               validation set. For example, 
	%                   predictions = svmPredict(model, Xval);
	%               will return the predictions on the cross validation set.
	%
	%  Note: You can compute the prediction error using 
	%        mean(double(predictions ~= yval))
	%
		
	% multiplicative increments for sigma and C
	valuesForC = [0.01 0.03 0.1 0.3 1 3 10 30];
	valuesForSigma = [0.01 0.03 0.1 0.3 1 3 10 30];
	globalPredictionError = 1000;

	for i = 1 : length (valuesForC),

		localC = valuesForC(i); 
		for j = 1 : length (valuesForSigma),

			localSigma = valuesForSigma(j);

			% make a model for current value of C and Sigma
			getModel = svmTrain(X, y, localC, @(x1, x2) gaussianKernel(x1, x2, localSigma));
			
			% predict model of cross validation set 
			prediction = svmPredict(getModel, Xval) 

			% determine the prediction on the cross validation set 
			predictionError = mean(double(prediction ~= yval));

			if predictionError < globalPredictionError,
				globalPredictionError = predictionError;
				C = localC;
				sigma = localSigma;
			end 

		end % loop through possible values for Sigma

	end % loop through possible values for C (1/lamba)

	% =========================================================================
end
