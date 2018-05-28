function [G] = stationary_solution(a, b, c, m, r)
    P = m/c;
    G = (a/b) * (1 - P/r);