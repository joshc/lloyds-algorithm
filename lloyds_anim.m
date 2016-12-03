function lloyds_anim()
    % LLOYDS_ANIM    Runs Lloyd's algorithm with pretty plots.
    %    See also LLOYDS_ALG.
    %
    % See also <a href="matlab:web('https://en.wikipedia.org/wiki/K-means_clustering')">K-means clustering</a> and <a href="matlab:web('https://en.wikipedia.org/wiki/Lloyd's_algorithm')">Lloyd's algorithm</a>.
    
    clear; clc; close all;
    
    % Get user-inputted values of K and N
    K = input('Number of clusters K [default=9]: ');
    if isempty(K)
        K = 9;
    end
    N = input('Size N of training set [default=100]: ');
    if isempty(N)
        N = 100;
    end
    
    % Run Lloyd's algorithm given K and N, and store cluster centers in u
    [u, iters] = lloyds_alg(K, N);
    
    % Check if user wants to print points
    clc;
    disp(['Converged in ' num2str(iters) ' iterations.']);
    disp(['There are ' num2str(size(u, 1)) ' cluster centers.']);
    choice = input(['Do you want to print the cluster centers? y/n ' ...
        '[default=y]: '], 's');
    if isempty(choice) || choice == 'y'
        choice = 1;
    else
        choice = 0;
    end
    if choice
        % Output termination text
        clc;
        disp('Lloyd''s algorithm (K-means clustering) has converged to: ');
        for k = 1:size(u, 1)
            disp(['(' num2str(u(k, 1)) ', ' num2str(u(k, 2)) ')']);
        end
    end
end