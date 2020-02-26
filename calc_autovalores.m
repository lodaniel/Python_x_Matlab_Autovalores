% Author: Luciano de Oliveira Daniel
% https://sites.google.com/site/professorlucianodaniel

% Carrega matriz.
%
load('calc_autovalores_01.mat')
%
% Carrega autovalores python.
%
load('calc_autovalores_02.mat')
tic
eigM=eig(A);
toc
eigP=w';
calc_autovalores_plota(real(eigM),imag(eigM),real(eigP),imag(eigP))
%plot(real(eigM),imag(eigM),'r',real(eigP),imag(eigP), 'b')
[eigMs,I]=sort(imag(eigM));
[eigPs,J]=sort(imag(eigP));
% erro=abs((eigPs-eigMs)./eigMs)*100;
erro=abs((eigP(J)-eigM(I))./eigM(I))*100;
x=1:length(erro);
% plot(x,erro);
plota_erro(x,erro);
