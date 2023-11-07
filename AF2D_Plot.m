clear
clc
close all


N=512;
M=1;
Z=41;
F=6;
load('CA512_1_41_6_rng5.mat')
figure
for m=1:M
    zm0(:,:,m) =AAF((x(:,m)).',(x(:,m)).',Z+10,F+3,1);
end
z=sum(zm0,3);
imagesc(-9-Z:Z+9,-2-F:F+2,db(z/max(z(:))),[-180,0])
xlabel('\tau')
ylabel('f')
colorbar



N=512;
M=2;
Z=41;
F=6;
load('CA512_2_41_6_rng5.mat')
figure
for m=1:M
    zm0(:,:,m) =AAF((x(:,m)).',(x(:,m)).',Z+10,F+3,1);
end
z=sum(zm0,3);
imagesc(-9-Z:Z+9,-2-F:F+2,db(z/max(z(:))),[-180,0])
xlabel('\tau')
ylabel('f')
colorbar