%% below
clc;
close;
clear;
%% gamma1
figure(1);
subplot(1,2,1);
x = 0:0.1:20;
alpha = [1,2,5,10];
label = {};
lambda = 1;
for a = 1:1:4
    y = gampdf(x,alpha(a),lambda);
    plot(x, y,'--');
    hold on;
    label(a) =  cellstr(strcat('$\alpha=', num2str(alpha(a)) , '$'));
end
legend(label, 'interpreter', 'latex');
xlim([0,20]);
ylim([0,0.4]);
title(strcat('$\lambda=', num2str(lambda) , '$'),'interpreter', 'latex', 'fontsize',10.5);

%% gamma2
subplot(1,2,2);
x = 0:0.1:20;
alpha = 2;
label = {};
lambda = [1,2,3];
for i = 1:1:3
    y = gampdf(x,alpha,lambda(i));
    plot(x, y,'--');
    hold on;
    label(i) =  cellstr(strcat('$\lambda=', num2str(lambda(i)) , '$'));
end
legend(label,'interpreter', 'latex');
xlim([0,20]);
ylim([0,0.4]);
title(strcat('$\alpha=', num2str(alpha) , '$'),'interpreter', 'latex', 'fontsize',10.5);