function [ Delta,b,a ] =DefineTopologies()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
Delta=[1 0 0 0 1;
       1 1 0 0 0;
       0 0 1 1 0;
       0 1 0 0 0;
       0 1 0 1 0;
       1 1 1 0 1;
       1 1 0 1 1;
       1 0 1 1 1;
       0 1 1 1 0;
       1 1 1 0 1;
       ];
b(:,:,1)=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0]; 
b(:,:,2)=[0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0];      
b(:,:,3)=[0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0]; 
b(:,:,4)=[0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0;
          0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0]; 
b(:,:,5)=[0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]; 
b(:,:,6)=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0]; 
b(:,:,7)=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1]; 
b(:,:,8)=[0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0]; 
b(:,:,9)=[1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 1 1 1 0]; 
b(:,:,10)=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
           1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0;
           0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0;
           0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0];       
a(:,:,1)=[0 0 0 0 0;
          0 0 0 0 0;
          1 1 0 0 0;
          0 0 0 0 0;
          0 0 1 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 1 0;
          0 0 0 0 0;
          0 0 0 0 1;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0];
a(:,:,2)=[0 0 0 0 0;
          0 0 0 0 0;
          1 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 1;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 1 0;
          0 0 0 0 0;
          0 1 1 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0];  
a(:,:,3)=[0 0 0 0 0;
          0 0 0 0 0;
          1 0 0 0 0;
          0 0 0 0 0;
          0 1 1 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 1 0;
          0 0 0 0 0;
          0 0 0 0 1;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0];  
a(:,:,4)=[0 0 0 0 0;
          0 0 0 0 0;
          0 0 1 1 0;
          0 0 0 0 0;
          0 1 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          1 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 1;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0];  
a(:,:,5)=[0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 1 1;
          0 0 0 0 0;
          0 0 1 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 1 0 0 0;
          0 0 0 0 0;
          1 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0];  
a(:,:,6)=[0 0 0 0 0;
          0 0 0 0 0;
          0 0 1 0 0;
          0 0 0 0 0;
          1 1 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 1;
          0 0 0 0 0;
          0 0 0 1 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0];  
a(:,:,7)=[0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 1;
          0 0 0 0 0;
          1 1 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 1 0;
          0 0 0 0 0;
          0 0 1 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0];  
a(:,:,8)=[0 0 0 0 0;
          0 0 0 0 0;
          0 1 0 0 0;
          0 0 0 0 0;
          0 0 1 1 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 1;
          0 0 0 0 0;
          1 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0];  
a(:,:,9)=[0 0 0 0 0;
          0 0 0 0 0;
          0 1 1 0 0;
          0 0 0 0 0;
          0 0 0 0 1;
          0 0 0 0 0;
          0 0 0 0 0;
          1 0 0 0 0;
          0 0 0 0 0;
          0 0 0 1 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0;
          0 0 0 0 0];  
a(:,:,10)=[0 0 0 0 0;
           0 0 0 0 0;
           1 1 0 0 0;
           0 0 0 0 0;
           0 0 0 1 0;
           0 0 0 0 0;
           0 0 0 0 0;
           0 0 1 0 0;
           0 0 0 0 0;
           0 0 0 0 1;
           0 0 0 0 0;
           0 0 0 0 0;
           0 0 0 0 0;
           0 0 0 0 0];  
      


end

