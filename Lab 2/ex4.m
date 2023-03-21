
h = 0.25;
x = [];
n = 4;
for i = 0 : n
  x = [x 1 + i * h];
endfor

f = sqrt(5 * x .^ 2 + 1)
f
t = [f]

x = [1 3/2 2 5/2 3]
t = [1 6 8 13 20]


prev_t = t;

for i = 1:n
  new_t = [];
	for j = 1 : n - i + 1
		new_t = [new_t prev_t(j+1) - prev_t(j)];
	endfor

	new_t = [new_t zeros(1, i)];

	t = [t ; new_t];
  prev_t = new_t;

endfor

t'


