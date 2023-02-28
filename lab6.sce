clc
clear

function [ans] = erlangC(A,C)
    p1 = (A^C)
    
    p2 = factorial(C)*( 1 - (A/C) )
    
    p3 = 0;
    
    for k=0:(C-1)
        
        p3 = p3 + (A^k)/factorial(k)
        
    end
    
    ans = p1 / (p1+ p2 * p3)
    
endfunction

function [ans2] = erlangCT(A,C,t,H)
    
    p1 = exp( ( -(C-A)*t )/H )
    
    ans2 = gos * p1
    
    
endfunction

R = 1.387
N = 4
gos = input("Enter the value of gos = ")
ch = input("Total channel = ")

Au = 0.029
lamda = 1

cover = ( 3*sqrt(3) )/2 * R*R

capa = ch/N

for i=0:0.001:100
    
    [val] = erlangC(i,capa)
    
    if val>gos
        A = i
        break
    end
end

A = int(A - 0.001)

user = A/Au

user = int(user/cover)

disp("Number of user per sq km = ",user)

H = (Au/lamda)*3600
t = 10

[ans] = erlangCT(A,capa,t,H)

ans = ans / gos

disp("The probality that a delayed call will have to wait longer than 10s is = ",ans * 100)

ans2 = gos * ans

disp("The probality that a call is delayed more than 10s = ",ans2 * 100)




