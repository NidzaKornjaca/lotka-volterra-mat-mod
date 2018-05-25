function [] = plot_figures(ts, ys, equations)
    plot(ts, ys)
    legend('plen', 'predator')
    figure();
    plot(ys(:,1),ys(:,2)); hold on               % plot solution in phase plane
    xlabel('plen'); ylabel('predator')
    %vectfield(equations,0:.8:7.5,0:.8:10.5); hold off    % plot vector field
