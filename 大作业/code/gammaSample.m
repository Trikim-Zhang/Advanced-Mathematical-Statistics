%% below
clc;
close;
clear;
seed = 6;
rng(seed);
%% gamma cdf and 100 samples
alpha = 5;
lambda = 2;
gammaSamples = gamrnd(alpha,lambda,[100,1]);
A = reshape(gammaSamples,10,10);
save('gammaSamples.csv','A','-ascii');
figure(1);
% theory cdf
x = 0:0.1:30;
y = gamcdf(x,alpha,lambda);
plot(x,y,'.-','linewidth',1);
hold on;
% experience cdf
[yExp, xExp] = ecdf(gammaSamples);
plot(xExp,yExp,'--','linewidth',1);
legend('理论分布函数','经验分布函数');
xlabel('$x$','interpreter', 'latex', 'fontsize',10.5);
ylabel('$p$','interpreter', 'latex', 'fontsize',10.5);
title(strcat('$\alpha=', num2str(alpha),',\, \lambda=',num2str(lambda), '$'),...
    'interpreter', 'latex', 'fontsize',10.5);
%% gamma pdf and 5000 samples
% 5000 samples
gammaSamples = gamrnd(alpha,lambda,[5000,1]);
figure(2);
histogram(gammaSamples,'Normalization','pdf')
hold on;
% gamma pdf
x = 0:0.1:30;
y = gampdf(x,alpha,lambda);
plot(x, y,'--','linewidth',1);
xlabel('$x$','interpreter', 'latex', 'fontsize',10.5);
ylabel('$p$','interpreter', 'latex', 'fontsize',10.5);
xlim([0,31]);ylim([0,0.11]);
title(strcat('$\alpha=', num2str(alpha),',\, \lambda=',num2str(lambda), '$'),...
    'interpreter', 'latex', 'fontsize',10.5);