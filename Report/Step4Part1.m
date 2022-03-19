k=-20:20;
ak= 1/4.*(2.*((1i.*pi.*k+1).*((-1).^k)-1)/ ...
    (pi.^2.*k.^2)+2.*(1i-1i.*(-1).^k)./(pi.*k));
ak(21)=0.75;
figure;
subplot(1,2,1)
stem(k,abs(ak))
xlabel('k')
ylabel('|a_k|')
title('Magnitude of a_k')
subplot(1,2,2)
stem(k,angle(ak))
xlabel('k')
ylabel('angle')
title('angle of a_k')
hold off

