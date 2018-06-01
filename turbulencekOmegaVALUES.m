close all;
clear all;
clc;

%% k (Turbulent Energy)
meanFlow = 0.36;
turbulenceIntensity = 0.15;
k = (3/2) * ((meanFlow*turbulenceIntensity)^2);

%setVALUE
%k=0.0001;

%% omega (Specific Turbulent Dissipation Rate)
Cmu=0.09;
turbulenceLengthScale=0.15;

omega1 = sqrt(k) / turbulenceLengthScale;
omega2 = sqrt(k) / turbulenceLengthScale * (Cmu^(-1/4));

%% nut (Turbulent Eddy Viscotiy)
nut1 = k / omega1;
nut2 = k / omega2;

%%
X = ['k= ',num2str(k)];
display(X);

X = ['omega1= ',num2str(omega1), '    omega2= ',num2str(omega2)];
display(X);

X = ['nut1= ',num2str(nut1),'    nut2= ',num2str(nut2)];
display(X);
