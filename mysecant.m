function x=mysecant(f,x0,x1,n)
n=9;
f= @(x) x-sin(x) -0.5;
x0=1;
x1=2;
xn1=x1;
xn=x0;
for i=1:n
    xn2=xn1 - f(xn1)*((xn1 - xn )/(f(xn1) - f(xn)));
    xn=xn1;
    xn1=xn2;
end
disp(xn2)
end

