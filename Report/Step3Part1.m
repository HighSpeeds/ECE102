syms omega

H=(1j*omega-1)./(3j*omega+2);

figure;
subplot(1,2,1)
fplot(abs(H),[-10*pi,10*pi])
xlabel('\omega')
ylabel('|H(\omega)|')
title('Magnitude of H(\omega)')
subplot(1,2,2)
fplot(angle(H),[-10*pi,10*pi])
xlabel('\omega')
ylabel('angle')
title('angle of H(\omega)')