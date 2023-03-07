% First we define the interval for t
t = -1 : 0.01 : 1

% help hold

hold on;

T1 = cos(1.*acos(t))
plot(t, T1)

T2 = cos(2.*acos(t))
plot(t, T2)

T3 = cos(3.*acos(t))
plot(t, T3)
