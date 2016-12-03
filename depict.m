function depict(X, u, S, N, u_prev)
    % DEPICT    Plot the pretty picture.
    %    DEPICT(X, u, S, N, u_prev) plots the data points, cluster centers,
    %    and denotes which points are in which clusters.
    
    clf;
    hold on;
    plot(X(:, 1), X(:, 2), 'bla.', 'MarkerSize', 10);
    plot(u(:, 1), u(:, 2), 'r*', 'Markersize', 12);
    % Plot previous cluster centers
    if ~isempty(u_prev)
        %plot(u_prev(:, 1), u_prev(:, 2), 'bo', 'Markersize', 6);
    end
    for i = 1:N
        k = find(S(:, i));
        plot([u(k, 1) X(i, 1)], [u(k, 2) X(i, 2)], 'bla:', 'LineW', 0.5);
        %pause(0.001);
    end
    hold off;
    pause();
end