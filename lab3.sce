clc
clear

function [ans]=erlangB (A,C)
    p1 = (A^C)/factorial(C)
    
    p2=0;
    
    for k=0:C
        p2 = p2+ (A^k)/factorial(k)
    end
    
    ans = p1/p2
endfunction

gos = input('Enter blocking probability : ')
capa = input('Enter capacity : ')

A=0
for i=0:0.001:100
    [ans2] = erlangB(i,capa)
    
    if(ans2>=gos)
        A=i
        break
    end
end

A = A-0.001

disp('Value of A is : ',A)
