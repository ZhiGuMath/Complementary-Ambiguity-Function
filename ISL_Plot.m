clear
clc
close all

load('CA512_1_41_3_rng5.mat')
semilogy(ISL,LineStyle="--",LineWidth=1.5,Color="#0072BD")
hold on
load('CA512_1_23_6_rng5.mat')
semilogy(ISL,LineStyle="--",LineWidth=1.5,Color="#D95319")
load('CA512_1_41_6_rng5.mat')
semilogy(ISL,LineStyle="--",LineWidth=1.5,Color="#EDB120")
load('CA512_2_41_3_rng5.mat')
semilogy(ISL,LineStyle="-",LineWidth=1.5,Color="#0072BD")
load('CA512_2_23_6_rng5.mat')
semilogy(ISL,LineStyle="-",LineWidth=1.5,Color="#D95319")
load('CA512_2_41_6_rng5.mat')
semilogy(ISL,LineStyle="-",LineWidth=1.5,Color="#EDB120")

xlabel('迭代次数')
ylabel('ISL')
legend({'AF-CA:(41\times3)','AF-CA:(23\times6)','AF-CA:(41\times6)',...
    'CAF-CA:(41\times3)','CAF-CA:(23\times6)','CAF-CA:(41\times6)'},...
    'NumColumns',2)
grid on
% ylim([1e-25,1e11])