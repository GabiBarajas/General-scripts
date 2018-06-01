close all;
clear all;
clc;

%% k (Turbulent Energy)
meanFlow = 1.0;
turbulenceIntensity = 0.15;
k = (3/2) * ((meanFlow*turbulenceIntensity)^2);

%setVALUE
%k=0.0001;

%% epsilon (Dissipation Rate)
Cmu=0.09;
turbulenceLengthScale=20.0;

e1 = Cmu * (k^(3/2)) / turbulenceLengthScale;
e2 = (Cmu^(3/4)) * (k^(3/2)) / turbulenceLengthScale;

%% nut (Turbulent Eddy Viscotiy)
nut1 = Cmu * k^2 / e1;
nut2 = Cmu * k^2 / e2;

%%
X = ['k= ',num2str(k)];
display(X);

X = ['e1= ',num2str(e1), '    e2= ',num2str(e2)];
display(X);

X = ['nut1= ',num2str(nut1),'    nut2= ',num2str(nut2)];
display(X);