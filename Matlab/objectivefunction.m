function [F] = objectivefunction(Dsd,Delta,b)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    F=zeros(94,1);
    for i=1:10
        F(i,1)=(Dsd*[1;1;1;1;1])*(Delta(i,:)*[1;1;1;1;1])*([1 1 1 1]*b(:,:,i)*[1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1]);
    end
end