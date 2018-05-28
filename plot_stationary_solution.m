params;

bound_stationary = @(r_in) ...
    stationary_solution(a, b, c, m, r_in);

u = linspace(2.5, 50, 100);
points = arrayfun(bound_stationary, u);

plot(u, points)
xlabel('u'); ylabel('predator')