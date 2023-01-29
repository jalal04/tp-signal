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
rien_ne_sert_de = x(5055:76000);
plot(rien_ne_sert_de);
title('phrase');

%Q5:

rien_ne_sert_de = x(5055:76000);
sound(rien_ne_sert_de,fs);

%Q6:
rien_ne_sert_de = x(5055:76000);

courir=x(76000:95395);

il_faut=x(95395:141652);

partir_a_point=x(141652:198500);

%Q7:
vector=[rien_ne_sert_de ,partir_a_point ,il_faut,courir];
sound(vector,fs)
