function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
total_j = length(theta);
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
modifiable_theta = theta; 


for iter = 1:num_iters
%    for jay = 1:total_j,
%        for aid = 1:m,
%            theta(jay) = theta(jay) - ( (alpha) * (1/m) ) * sum( ( X(aid,:)*theta) - y(aid,:)*X(aid,jay) );
%            
%            disp(computeCost(X, y, theta));
%        end
%    end
    disp(computeCost(X, y, theta))
    h_of_x = (X*theta - y);
    
    for jay=1:total_j
        modifiable_theta(jay) = sum(h_of_x.*X(:,jay));
    end
    
    theta = theta - (alpha/m)*modifiable_theta;

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %


    




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
