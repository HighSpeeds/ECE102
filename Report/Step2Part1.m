k=6;

syms t
x=(1/2).*rectangularPulse(-1.5, 1.5, t-1.5);
X_l = laplace(x);
syms s
sys = (s-1)/((k+1)*s+4-k);
y=ilaplace(sys.*X_l);
fplot(y,[0,10])
xlabel('t','Interpreter','latex','fontsize',16); 
ylabel('y(t)','Interpreter','latex','fontsize',16);
title('y(t) for unstable K=6','fontsize',18);

