function centroids = kMeansInitCentroids(X, K)
%KMEANSINITCENTROIDS This function initializes K centroids that are to be 
%used in K-Means on the dataset X
%   centroids = KMEANSINITCENTROIDS(X, K) returns K initial centroids to be
%   used with the K-Means on the dataset X
%

% You should return this values correctly
centroids = zeros(K, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should set centroids to randomly chosen examples from
%               the dataset X
%

% Initialize the centroids to be random examples
% Randomly reorder the indices of examples

%provided code
%randidx = randperm(size(X, 1));

% Take the first K examples as centroids
%centroids = X(randidx(1:K), :);

%My own code
for i = 1:K
   col = round(random('unif',1,size(X, 1))); 
   centroids(i,1) = X(col,1);
   centroids(i,2) = X(col,2);
end

end
% =============================================================


