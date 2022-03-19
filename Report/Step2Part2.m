k=6;

syms t
x=heaviside(t);
X_l = laplace(x);
syms s
sys = (s-1)/((k+1)*s+4-k);
y=ilaplace(sys.*X_l);
fplot(y,[0,10])
xlabel('t','Interpreter','latex','fontsize',16); 
ylabel('g(t)','Interpreter','latex','fontsize',16);
title('g(t) for unstable K=6','fontsize',18);