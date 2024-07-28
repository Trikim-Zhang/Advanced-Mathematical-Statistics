%% below
clc;
close;
clear;
seed = 6;
rng(seed);
%% beta cdf and 100 samples
a = 1.5;
b = 2;
betaSamples = betarnd(a,b,[100,1]);
A = reshape(betaSamples,10,10);
save('betaSamples.csv','A','-ascii');
figure(1);
% theory cdf
x = 0:0.002:1;
y = betacdf(x,a,b);
plot(x,y,'.-','linewidth',1);
hold on;
% experience cdf
[yExp, xExp] = ecdf(betaSamples);
plot(xExp,yExp,'--','linewidth',1);
legend('理论分布函数','经验分布函数');
xlabel('$x$','interpreter', 'latex', 'fontsize',10.5);
ylabel('$p$','interpreter', 'latex', 'fontsize',10.5);
xlim([0,1]);
title(strcat('$Be(', num2str(a),',\,',num2str(b), ')$'),'interpreter', 'latex');
%% beta pdf and 5000 samples
% 5000 samples
betaSamples = betarnd(a,b,[5000,1]);
figure(2);
histogram(betaSamples,'Normalization','pdf');
hold on;
% beta pdf
x = 0:0.002:1;
y = betapdf(x,a,b);
plot(x, y,'--','linewidth',1);
xlabel('$x$','interpreter', 'latex', 'fontsize',10.5);
ylabel('$p$','interpreter', 'latex', 'fontsize',10.5);
xlim([0,1]);
title(strcat('$Be(', num2str(a),',\,',num2str(b), ')$'),'interpreter', 'latex');
