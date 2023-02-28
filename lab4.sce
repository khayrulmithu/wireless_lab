clc
clear

function [ans]=erlangC(A,C)
    p1=(A^C)
    
    p2 = 0;
    
    for k=0:(C-1)
        
        p2 = p2+(A^k)/factorial(k)
    end
    
    p3 = p1 + factorial(C)*(1-(A/C))*p2
    
    ans = p1/p3
endfunction

function [ans2] = erlangCT(A,C,t,H)
    [p1] = erlangC(A,C)
    
    p2 = exp( (-(C-A)*t)/H )
    
    ans2 = p1 * p2
endfunction

gos = input('Enter blocking probability : ')
capa = input('Enter capacity : ')

A=0
for i=0:0.001:100
    [ans2] = erlangC(i,capa)
    
    if(ans2>=gos)
        A=i
        break
    end
end

A = A-0.001

disp('Value of A is : ',A)


