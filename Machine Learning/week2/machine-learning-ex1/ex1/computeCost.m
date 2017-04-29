function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
% 利用矩阵来进行计算，将循环转成矩阵形式

%predictMat = X*theta;
%errorMat = (predictMat - y).^2;
%sumMat = sum(errorMat);
%J = sumMat / (2*m);

J = 1/(2*m)*( (X*theta-y)' * (X*theta-y) ) ;

% =========================================================================

end
