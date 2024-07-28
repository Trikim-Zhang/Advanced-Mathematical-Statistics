%% below
clc;
close;
clear;
%% beta1
figure(1);
subplot(1,2,1);
x = 0:0.002:1;
a = [0.8,2];
b = [0.8,2];
label = {};
for i = 1:1:2
    y = betapdf(x,a(i),b(i));
    plot(x, y,'--');
    hold on;
    label(i) =  cellstr(strcat('$Be(', num2str(a(i)),',\,',num2str(b(i)), ')$'));
end
legend(label, 'interpreter', 'latex');
xlim([0,1]);

%% beta2
subplot(1,2,2);
x = 0:0.002:1;
a = [0.8,2,1];
b = [2,0.8,1];
label = {};
for i = 1:1:3
    y = betapdf(x,a(i),b(i));
    plot(x, y,'--');
    hold on;
    label(i) =  cellstr(strcat('$Be(', num2str(a(i)),',\,',num2str(b(i)), ')$'));
end
legend(label, 'interpreter', 'latex');
xlim([0,1]);