function [ CSF_out ] = CSF( fq,L,Ls,X )
% Calculate contrast sensitivity (Barten model) for a series of spatial frequencies
%   fq: spatial frequency in cycle/degree, should be a scalar or a vector
%   L: display luminance in cd/m2
%   Ls: surround luminance in cd/m2
%   X: Field of view in degree
%   CSF: retured contrast sensitivity
%   CSF equation from: P. Barten, “Formula for the contrast sensitivity of the human eye,” Proc. SPIE 5294, 231–238 (2003).
%   By Zong Qin (qinzong.wnlo@gmail.com) from National Chiao Tung University, Taiwan

Itm1=5400*exp(-0.0016*fq.^2*(1+100/L)^0.08);
Itm2=1+144/(X^2)+0.64*fq.^2;
Itm3=63./(L^0.86)+1./(1-exp(-0.02*fq.^2));
CSF_uncorrected=Itm1./sqrt(Itm2.*Itm3);

Itm4=(Ls/L)*(1+144/(X^2))^0.25;
Itm5=(1+144/(X^2))^0.25;
Itm6=((log(Itm4))^2-(log(Itm5))^2)/(2*log(32)*log(32));
Surround_factor=exp(-Itm6);
CSF_out=CSF_uncorrected.*Surround_factor;

end

