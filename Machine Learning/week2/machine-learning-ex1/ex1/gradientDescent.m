function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%function [theta, J_history,theta_collection] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

%[row,~] = size(theta);

%theta_collection = zeros(num_iters,row);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %


theta = theta - alpha * X'*( X*theta - y )/m;
%theta_collection(iter,:) = theta';


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

    %fprintf("%f \n",J_history(iter));
    
end

%fprintf("**********************************\n");
%disp(theta_collection);
%fprintf("**********************************\n");

end
