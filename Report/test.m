syms s;
stable = (s-1) / (3*s+2);
syms t;
input = (1/2).*rectangularPulse(-1.5, 1.5, t-1.5);
laplaceInput = laplace(input);
ystable = ilaplace(laplaceInput .* stable);
figure (3);
fplot(ystable, [0 10]);
xlabel('t','Interpreter','latex','fontsize',16); % Label the x and y axes
ylabel('y(t)','Interpreter','latex','fontsize',16);
title('y(t) for stable K','fontsize',18); % Set graph title
grid on; % Apply mesh grid to graph
