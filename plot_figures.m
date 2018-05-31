function [] = plot_figures(ts, ys)
    plot(ts, ys)
    legend('plen', 'predator')
    figure();
    plot(ys(:,1),ys(:,2));
    hold on
    xlabel('plen'); ylabel('predator')
    hold off
