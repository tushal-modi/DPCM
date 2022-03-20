predictor = [0 1]; 
% y(k)=x(k-1)
%y(k) = p(1)x(k-1) + p(2)x(k-2) + ... + p(m-1)x(k-m+1) + p(m)x(k-m)
%predictor = [0, p(1), p(2), p(3),..., p(m-1), p(m)]

partition = [-1:.1:1];
codebook = [-1:.1:1.1];

t = [0:pi/50:2*pi];

x = sin(3*t); % Original signal

% Quantize x using DPCM.
encodedx = dpcmenco(x,codebook,partition,predictor);

% Try to recover x from the modulated signal.
decodedx = dpcmdeco(encodedx,codebook,predictor);

subplot(311)
plot(t,x)
title('Original signal')
subplot(312)
plot(t,encodedx,'g--')
title('Encoded signal')
subplot(313)
plot(t,decodedx,'r')
title('Decoded signal')

distor = sum((x-decodedx).^2)/length(x) % Mean square error
