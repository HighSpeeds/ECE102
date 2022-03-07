k=-20:1:20;

%a_k=(1-exp(-1j*k*pi))/(-2j*k\pi

a_k=-(1-2*exp(-1j*k*pi)+exp(-1j*k*pi))./(2*k.^2*pi.^2)

a_k(21)=0.5;

stem(k,abs(a_k))
xlabel('k')
ylabel('a_k') 