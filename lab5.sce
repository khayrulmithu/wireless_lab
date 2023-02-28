clc
clear

function [ans] = erlangB(A,C)
    p1 = (A^C)/factorial(C)
    
    p2 = 0;
    
    for k=0:C
        
        p2 = p2 + (A^k)/factorial(k)
    end
    
    ans = p1/p2
    
endfunction


gos = input("Enter the value of gos = ")

capa = input("Enter the capacity = ")

Au = input("Enter the value of Au = ")

A = 0.001
for i=0:0.001:100
    [val] = erlangB(i,capa)
    
    if  val>gos
        
        A = i
        break  
    end
end

A = A-0.001

user = int(A/Au)

if user<1
     user = 1
end

disp("Number of user = ",user)
    
   




