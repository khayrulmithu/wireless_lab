clc
clear

co_ch = 6;
minimum = 15;

n = input('Enter path loss component n : ');


function [out] = SI(p,N)
     Q=sqrt(3*N);
     
     si = (Q^p)/co_ch;
     
     si=log10(si);
     
     out=si*10;
     
endfunction

for i=1:10
    
    for j=1:i
        
        N = i*i + i*j + j*j;
        
        [out] = SI(n,N);
        
        if(out>=minimum) then
            break;
        end
    end
    
    if(out>=minimum) then
            break;
    end
    
end


disp('S/I for N=', N ,' is : ',out);
