function [ Dsd,Tfi,nf ] =DefineChain(C,SDnum)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
Dsd=zeros(C,SDnum);
Dsd(C,:)=[1 1 1 1 1];
%%f=1  ----->  NAT
%%f=2  ----->  FW
%%f=3  ----->  TM
%%f=4  ----->  WOC
%%f=5  ----->  IDPS
Tfi=[1 0 0 0 0;
     0 1 0 0 0 
     0 0 1 0 0
     0 0 0 1 0
     0 0 0 0 1];
nf=[1 1 1 1 1];  

end

