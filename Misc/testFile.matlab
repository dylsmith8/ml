% basic mathematical operations 

% x is a 1 x 10 matrix or row vector 
x = [1 2 4 5 6 7 8 9 10] 				

% y is a 3 x 3 matrix 
y = [2, 4, 6, ; 3, 7, 9 ; 6, 8, 2]		

% z =  a prime or a transpose (a^T)
z = a'

% this will perform the pseudo inverse of x (x)^-1
pinv(x)

% Matrix arithmetic using 
A = X * 2 % scalar multiplication (can apply to associative law)

% X transpose multiplied by X
b = X' * X 

% Generate 5 x 5 matrix with random values 
C = rand(5, 5)

% can do logical operations such as
	% includes <, >, &&, ||, &, | etc 
d = 1 == 2 % evaluates to 0
e = 1 == 1 % evaluates to 1

% plotting data
% ----------------

y1 = sin(30) 
plot(y1)

y2 = cos(30)
plot (y2)

hold on % plot new figures on top of old one

plot (y1, 'r') % plot in red
xlabel('time')
ylabel('value')
legend('sin', 'coz')
title('my plot')
cd 'c:\print -dpng' ; 'myPlot.png'
figure(1)
close % close the plot 

subplot (1 , 2, 1) % divide plot a 1x2 grid
clf % clear figure 

a = magic(5)
imagesc(A) % plot matrix by colour 

% Control statements 
% -------------------------

v = zeros(10, 1) % 10 x 1 vector of 0s

	% each index of v becomes exponent of base2
for i = 1 : 10,
	v(i) = 2^i;
end 

% break and continue can be used

i = 1;
while i <= 5,
	v(i) = 100;
	i = i + 1;
end; 

i = 1
while true,
	v(i) = 999;
	if i == 6,
		break;
	end; 
end 

% Defining functions 
% ---------------------------

% create a function file .m where it should look for the function
% should be in the same directory where its Octave is running
% can use addPath('function directory') so you don't have to be in the same directory

% functions can be used to return (multiple) values 

% y1 and y2 are the return values and x is the argument 
function [y1, y2] = squareAndCubeNumber(x)

y1 = x^2;
y2 = x^3;

% Cost function example 
function J = costFunction (X, y, theta)

% X is the design matrix containing our training examples 
% y is the class labels (results)

m = size (X, 1); % determine the number of training examples 
predictions = x * theta; % predictions of hypothesis on all examples 
sqrErrors = (predictions - y). y^2; % squared errors 

J = 1/(2*m) * sum(sqrErrors);