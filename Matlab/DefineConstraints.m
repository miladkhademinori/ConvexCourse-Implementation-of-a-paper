function [ A,B,Aeq,Beq] = DefineConstraints(Ic,M,a,Tfi,Rf,K,F,V,Delta,C,TopoNum,nf,ncore,SDNum,Dsd)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    Rowcnt=1;
    Aeq=zeros(5,94);
    Beq=zeros(5,1);
    ConstraintsNum=C+(F*V)+(F*V)+F+(2*V)+1+V;
    A=zeros(ConstraintsNum,(10+70+14));
    B=zeros(ConstraintsNum,1);
%% First Constraints
    for i=1:TopoNum
       A(Rowcnt,i)=1;
    end
    B(Rowcnt,1)=Ic;
%% Second Constraints
    ColumnCnt=0;
    for v=1:V
        for f=1:F
            Rowcnt=Rowcnt+1;
            ColumnCnt=ColumnCnt+1;
            A(Rowcnt,ColumnCnt+TopoNum)=-M;
            B(Rowcnt,1)=0;
            for j=1:(TopoNum)
                for i=1:F
                        if (Tfi(f,i)*a(v,i,j))==1
                            A(Rowcnt,j)=1; 
                        end
                        
                end
            end
        end
    end  

%% Third Constraints 
    ColumnCnt=0;
    for v=1:V
        for f=1:F
            Rowcnt=Rowcnt+1;
            ColumnCnt=ColumnCnt+1;
            B(Rowcnt,1)=0;
            A(Rowcnt,ColumnCnt+TopoNum)=1;
            for j=1:(TopoNum)
                for i=1:F
                    if (Tfi(f,i)*a(v,i,j))==1
                        A(Rowcnt,j)=-1; 
                    end  
                end
            end
        end
    end
    
%% 4th Constraints
    for f=1:F
        Columncnt=5+f;
        Rowcnt=Rowcnt+1;
        B(Rowcnt,1)=Rf;
        for v=1:14
             Columncnt=(Columncnt+5);
             A(Rowcnt,Columncnt)=1;  
        end
    end
%% 5th Constraints
    Columncnt=10;
    for v=1:V
        Rowcnt=Rowcnt+1;
        B(Rowcnt,1)=0;
        for f=1:F
            Columncnt=Columncnt+1;
            A(Rowcnt,Columncnt)=1;
        end
        A(Rowcnt,(TopoNum+(V*F))+v)=-M;
    end
%% 6th Constraints
    Columncnt=10;
    for v=1:V
        Rowcnt=Rowcnt+1;
        B(Rowcnt,1)=0;
        for f=1:F
            Columncnt=Columncnt+1;
            A(Rowcnt,Columncnt)=-1;
        end
        A(Rowcnt,(TopoNum+(V*F))+v)=1;
    end
%% 7th Constraints
    Rowcnt=Rowcnt+1;
    B(Rowcnt,1)=K;
    for v=1:14
        A(Rowcnt,TopoNum+(V*F)+v)=1;
    end
%% 8th Constraints
    for v=1:V
        Rowcnt=Rowcnt+1;
        B(Rowcnt,1)=ncore(1,v);
        Columncnt=0;
        for i=1:TopoNum
            Columncnt=Columncnt+1;
            for sd=1:SDNum
                for f=1:F
                    for j=1:F
                        A(Rowcnt,Columncnt)= A(Rowcnt,Columncnt)+(Dsd(C,sd)*Delta(TopoNum,sd)*Tfi(f,j)*nf(f)*a(v,j,i));
                    end
                end
            end
        end
        
    end    
%% 9th Constraints
    for sd=1:SDNum
        for i=1:TopoNum
            Aeq(sd,i)=Delta(i,sd);
            Beq(sd,1)=1;
        end
    end
end
