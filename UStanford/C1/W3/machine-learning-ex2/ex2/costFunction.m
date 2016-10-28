function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 

h_of_x = gFunc(X*theta);
grad = zeros(size(theta));
total_j = length(theta);
m = length(y);
% J_history = zeros(num_iters, 1);
modifiable_theta = theta;
errors = h_of_x - y;
alpha = 1;
lambda = 0;
m = length(y); % number of training examples



y_one = y .* log( h_of_x );
y_zero = (1 - y).*( log(1-h_of_x) );

J = 1/m * sum( (y_one * -1 ) + ( y_zero  * -1) );


% J = 1/(2*m) * sum(errors);


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%







 for jay=1:total_j
    
    grad(jay,:) =  (1/m)*sum( (h_of_x-y).*X(:,jay) ); 
    
 end


%grad(1,1) = (1/m)*sum((sigmoid(X*theta)-y).*X(:,1)); 
%grad(2:end,1)=((1/m)*((sigmoid(X*theta)-y)'*X(:,2:end)))'+(lambda/m)*theta(2:end);

grad = grad(:);
% =============================================================

end
