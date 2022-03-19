omega=-10:0.1:10;

X=(2*pi)./((1i*omega+1).^2+4*pi.^2)+exp(-2i*omega);

plot(omega,abs(X))
xlabel '\omega'
ylabel '|X(j\omega)|'
title('Plot of Amplitude Spectrum of X(j\omega)')
figure;
plot(omega,angle(X))
xlabel '\omega'
ylabel 'phase of X(j\omega)'
title('Plot of Phase Spectrum of X(j\omega)')