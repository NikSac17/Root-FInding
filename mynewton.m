function x=mynewton(f,f1)
n=17;
x0=2;
tol=10^-14;
f=@(x) - x.^3 - (8*x.^2)/3 - (3*x)/2 - 1/6
f1= @(x) 3*x.^2 -6.46*x - 5.54;
x=x0;
    for i=1:n
            x=x-f(x)/f1(x);
    end
    xn=x;
    a=f(xn);
    r=abs(a-0);
    if r>tol
        warning('Desired accuracy not achieved.')
    end
    
fprintf('The root is %f.\n\n',xn);
end
