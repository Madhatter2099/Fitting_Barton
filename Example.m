% Example of function "CSF"
% Input a series of spatial frequencies and calculate corresponding contrast sensitivities (Barten model) 
% CSF equation from: P. Barten, �Formula for the contrast sensitivity of the human eye,� Proc. SPIE 5294, 231�238 (2003).
% By Zong Qin (qinzong.wnlo@gmail.com) from National Chiao Tung University, Taiwan

clc; clear; close;
fq = 0.1:0.01:50; % fq: spatial frequency in cycle/degree, should be a scalar or a vector
L  = 100;         % L: display luminance in cd/m2
Ls = 200;         % Ls: surround luminance in cd/m2
X  = 20;          % X: Field of view in degree
CSF_out = CSF(fq,L,Ls,X);    % calculate corresponding CSF values using the provided function
figure; plot(fq,CSF_out);
xlabel('Spatial frequency (cycle/degree)');
ylabel('Contrast sensitivity');