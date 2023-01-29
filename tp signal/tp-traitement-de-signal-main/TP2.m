clear all
close all
clc
%% Jeux de mots
%Q1:

[x,fs]=audioread("C:\Users\jalal\OneDrive\Bureau\phrase.opus.unknown");

%Q2:
N = length(x)
ts = 1/fs
t = (0:N-1)*ts
sound(x,fs)
plot(t,x)

%Q3:

sound(x,fs*2);
sound(x,fs/2);

%Q4:
a = x(5055:76000);
plot(a);
title('phrase');

%Q5:

a = x(5055:76000);
sound(a,fs);

%Q6:
a = x(5055:76000);

c=x(76000:95395);

d=x(95395:141652);

b=x(140000:100000);

%Q7:
vector=[a ,b ,d,c];
sound(vector,fs)
%% Synthèse et analyse spectrale d’une gamme de musique

%Synthèse d’une gamme de musique

%Q1:

fe=8192;
te=1/fe;
N=5000;
t=(0:N-1)*te;
do=10*cos(2*pi*262*t);
%sound(do,fe)
re=10*cos(2*pi*294*t);
%sound(re,fe)
mi=10*cos(2*pi*330*t);
%sound(mi,fe)
fa=10*cos(2*pi*349*t);
%sound(re,fa)
sol=10*cos(2*pi*392*t);
%sound(sol,fe)
la=10*cos(2*pi*440*t);
%sound(la,fe)
si=10*cos(2*pi*494*t);
%sound(si,fe)
do2=10*cos(2*pi*523*t);
%sound(do2,fe)
musique=[do,re,mi,fa,sol,la,si,do2];
sound(musique,fe)
 

%Spectre de la gamme de musique

%Q2:

f=(0:N-1)*(fe/N);
spectre_musique=fft(musique);
signalAnalyzer(abs(fftshift(spectre_musique)))