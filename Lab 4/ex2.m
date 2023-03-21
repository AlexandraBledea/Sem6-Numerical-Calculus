x = [1, 2, 3, 4, 5];
y = [22, 23, 25, 30, 28];

xx = 2.5;

newtonForAValue(x, y, 2.5)

t = 1 : 0.01 : 5;
n = length(t);
sol = [];
for i = 1 : n
	sol = [sol newton(x, y, t(i))];
end
hold on;
plot(x, y, "*")
plot(t, sol, "g");
input("");
