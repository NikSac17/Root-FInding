function bisect(f,a,t)

%a = 1 st guess
%b = 2 nd guess

while f(a)*f(t)>0
    a=input('Enter 1 st guess : ');
    t=input('Enter 2 nd guess : ');
end

for i=1:1:100
    c=(a+t)/2;
    
     if f(c)>0
        t=c;
     else
        a=c;
    end
end
fprintf('Root is %f.\n\n\n',c)

end
        
