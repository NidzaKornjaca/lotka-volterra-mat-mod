params;

lv_logistic = @ (t, state) [
    a * state(1) * ( 1 - (state(1))/u) - b * state(1) * state(2);
    c * state(1) * state(2) - m * state(2)
];

[ts, ys] = ode45(lv_logistic, [0, 15], [p_init;g_init]);

plot_figures(ts, ys, lv_logistic);