k=-20:20;
ak= 1/4.*(2.*((1i.*pi.*k+1).*(-1).^k-1)/ ...
    (pi.^2.*k.^2)+2.*(1i-1i.*(-1).^k)./(pi.*k));
ak(21)=0.75;


H_k=(1j.*k.*pi/2-1)./(3j.*k.*pi/2+2);

figure;
subplot(1,2,1)
stem(k,abs(H_k.*ak))
xlabel('k')
ylabel('|Y_k|')
title('Magnitude of Y_k')
subplot(1,2,2)
stem(k,angle(H_k.*ak))
xlabel('k')
ylabel('angle')
title('angle of Y_k')
hold off