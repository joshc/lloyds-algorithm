function S = find_clusters(X, u, K, N)
    % FIND_CLUSTERS    Determines the clusters.
    %    S = FIND_CLUSTERS(X, u, N, K) finds the clusters given a set of 
    %        data points, the cluster centers, and the size of the set of 
    %        points.
    
    % Matrix that keeps track of the clusters
    S = zeros(K, N);
    for n = 1:N
        x_n = X(n, :);
        norms = sqrt(sum((repmat(x_n, K, 1) - u) .^ 2, 2));
        % Cluster by distance to one of the cluster centers
        [~, min_i] = min(norms);
        if S(min_i, n) ~= 1
            S(min_i, n) = 1;
        end
    end
end