function idx = findClosestCentroids(X, centroids,counts)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K

K  = size(centroids, 1);
n = size(centroids, 2);
m = size(X,1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

%distnace matrix for calculating closest centroid
d = zeros(K,n);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for i = 1:m
    d(1:K,1:n) = X(i,1:n) - centroids(1:K,1:n);
    [~,idx(i)] = min(diag(d * d'));
end
% =============================================================

end

