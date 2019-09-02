function [gammaE,gammaM]=coefRef(epsilon1,epsilon2,miu,f)
close all;
%Suponiendo incidencia sobre el plano zy. Propagación en z modo 
%TE. Suponiendo una Kx=1;
%ti: Ángulo de incidencia 
ti=[0:0.01:pi/2];
etan=(((epsilon2*miu*(2*pi*f)^2)/(epsilon1*miu*(2*pi*f)^2))^.5)./cos(ti);
admt=etan.*(epsilon1/epsilon2);
gammaE=((etan-1)./(etan+1)).^2;
gammaM=((admt-1)./(admt+1)).^2;
figure(1);
plot(ti,gammaE);
hold on;
plot(ti,gammaM);


end