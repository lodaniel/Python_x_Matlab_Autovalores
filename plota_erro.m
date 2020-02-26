% Author: Luciano de Oliveira Daniel
% https://sites.google.com/site/professorlucianodaniel

function plota_erro(X1, Y1)
figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'on');
stem(X1,Y1,'MarkerFaceColor',[0 0 0],'MarkerEdgeColor','none',...
    'MarkerSize',4,...
    'LineWidth',1,...
    'Color',[0 0 0]);
xlabel('Índice dos Autovalores','FontSize',20);
ylabel('\epsilon (%)','FontSize',20);
box(axes1,'on');
set(axes1,'FontName','Times New Roman','FontSize',18,'GridAlpha',0.5,...
    'XGrid','on','YGrid','on');