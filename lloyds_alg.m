function [u, iters] = lloyds_alg(K, N)
    % LLOYDS_ALG    Also known as K-means clustering.
    %    [u, iters] = LLOYDS_ALG(K, N) runs Lloyd's algorithm for K 
    %                 clusters given N data points in the training set.
    
    % Generate training set inputs on X = [-1, 1] x [-1, 1]
    X = 2 .* rand([N 2]) - 1;
    
    % Initialize to random centers for K clusters
    u = datasample(X, K, 'Replace', false);
    % Create matrix for previous cluster centers
    u_prev = zeros(size(u));
    % Matrix that keeps track of the clusters
    S = find_clusters(X, u, K, N);
    % Plot the points and the (point)-(cluster center) distances
    depict(X, u, S, N, []);
    
    iters = 0;
    % Check for convergence of cluster centers
    while u ~= u_prev
        iters = iters + 1;
        % Record previous cluster centers
        u_prev = u;
        % Find new cluster centers
        u = (S * X) ./ repmat(sum(S, 2), 1, 2);
        % Matrix that keeps track of the clusters
        S = find_clusters(X, u, K, N);
        % Plot the points and the (point)-(cluster center) distances
        depict(X, u, S, N, u_prev);
    end
end