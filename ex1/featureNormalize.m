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
mu
sigma

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

for i = 1:size(X_norm,2)
  mu(i) = mean(X(:,i))
  sigma(i) = std(X(:,i))
end

X_norm = X_norm - mu
X_norm = X_norm./sigma

% mean1 = mean(X(:,1));
% mean2 = mean(X(:,2));
% X_norm(:,1) = X_norm(:,1) - mean1;
% X_norm(:,2) = X_norm(:,2) - mean2;
fprintf(' x = [%f %f]\n', [X_norm(1:10,:) ]');
%mu(1, 1) = 1;
% mu(1, 1) = mean1;
% mu(1, 2) = mean2;



% X_norm(:,1) = X_norm(:,1)/(max((X_norm(:,1)))-min(X_norm(:,1)))
% X_norm(:,2) = X_norm(:,2)/(max((X_norm(:,2)))-min(X_norm(:,2)))
% 
% fprintf(' x = [%f %f]\n', [X_norm(:,:) ]');
% plot(X_norm(:,1));
% hold on;
% plot(X_norm(:,2))

% std1 = std(X_norm(:,1));
% std2 = std(X_norm(:,2));
% 
% X_norm(:,1) = X_norm(:,1)/std1;
% X_norm(:,2) = X_norm(:,2)/std2;

%sigma(1, 1) = 1;
% sigma(1, 1) = std1;
% sigma(1, 2) = std2;

mu
sigma
% mean(X_norm(:,1))
% mean(X_norm(:,2))
% std(X_norm(:,1))
% std(X_norm(:,2))
% fprintf(' x = [%f %f]\n', [X_norm(:,:) ]');
% plot(X_norm(:,1));
% hold on;
% plot(X_norm(:,2))

% ============================================================

end
