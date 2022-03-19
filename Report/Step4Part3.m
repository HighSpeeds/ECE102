
t=0:0.1:12;
a =(rem(t,4)/2).*heaviside(rem(t,4))-(rem(t,4)/2).*heaviside(rem(t,4)-2)...
+heaviside(rem(t,4)-2) - heaviside(rem(t,4)-4);

x = zeros(1,121);
y=zeros(1,121);
for k=-20:20
    if k~=0
        ak= 1/4.*(2.*((1i.*pi.*k+1).*(-1).^k-1)/ ...
        (pi.^2.*k.^2)+2.*(1i-1i.*(-1).^k)./(pi.*k));
        
        hk=(1j.*k.*pi/2-1)./(3j.*k.*pi/2+2);
        x=x+ak.*exp(1i*k*pi/2*t);
        y=y+hk*ak.*exp(1i*k*pi/2*t);
    end

end

plot(t,real(y))
hold on
plot(t,a)

xlabel('t')
ylabel('y(t) and a(t)')
title('Plot of y(t) and a(t)')
legend('y(t)','a(t)')
hold off