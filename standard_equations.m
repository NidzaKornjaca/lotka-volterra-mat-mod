params;

lv_standard = @(t, state) [
    a * state(1) - b * state(1) * state(2);
    c * state(1) * state(2) - m * state(2)
];

[ts, ys] = ode45(
    lv_standard, [0, 10], [p_init;g_init]
);

plot_figures(ts, ys, lv_standard);