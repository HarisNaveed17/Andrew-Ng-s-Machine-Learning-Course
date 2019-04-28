function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));


% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       
mu=mean(X);
sigma=std(X);

fprintf('size of mu: %d %d\n',size(mu));
fprintf('size of sigma: %d %d\n',size(sigma));

mu_matrix=ones(size(X,1),1)*mu;
sigma_matrix=ones(size(X,1),1)*sigma;

fprintf('size of mu matrix: %d %d\n',size(mu_matrix));
fprintf('size of sigma matrix: %d %d\n',size(sigma_matrix));
fprintf('size of X matrix: %d %d\n',size(X));
size(sigma_matrix);
size(X);

X_norm=(X-mu_matrix)./sigma_matrix;
fprintf('size of X_norm matrix: %d %d\n',size(X_norm));









% ============================================================

end
