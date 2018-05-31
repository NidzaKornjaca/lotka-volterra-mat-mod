params;

i=1;
hold on
for u = 0.5:0.25:3
    lv_logistic = @ (t, state) [
        a * state(1) * ( 1 - (state(1))/u) - ...
        b * state(1) * state(2);
        (c * state(1) * state(2) - ...
        m * state(2))
    ];
    legendCell{i} = num2str(u,'U=%2.2f');
    i = i + 1;
    [ts, ys] = ode45( ...
        lv_logistic, [0, 2000], [p_init;g_init] ...
    );
    ylim([0 1])
    plot(ys(:,1),ys(:,2));
end
legend(legendCell)
xlabel('plen'); ylabel('predator')
hold off
