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

