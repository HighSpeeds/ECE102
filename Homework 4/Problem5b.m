syms s
F=1/(s*((s+2)^2+(pi/3)^2));
f=vpa(ilaplace(F),4)
fplot(f,[0,2])
