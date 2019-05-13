tic
%multivariable newton-raphson method
clc

%non-linear equations
f1=@(x) c1+c2-2;
f2=@(x) c1*x1 + c2*x2;
f3=@(x) c1*x1.^2 + c2*x2.^2 -2/3;
f4=@(x) c1*x1.^3 + c2*x2.^3;

x=[1/2 ;1/2;1;1];     %initial guess


%define jacobi


for i=1:10
    
    J=[1 1 0 0;x(3) x(4) x(1) x(2); x(3).^2 x(4).^2 2*x(1)*x(3) 2*x(2)*x(4);x(3).^3 x(4).^3 3*x(1)*x(3).^2 3*x(2)*x(4).^2]
    f=-[x(1)+x(2)-2;x(1)*x(3)+x(2)*x(4);x(1)*x(3).^2+x(2)*x(4).^2-(2/3);x(1)*x(3).^3+x(2)*x(4).^3]
    cond(J)
    dx=J\f;
    x=x+dx;
    disp(x)
end
disp('Solution vector is : ')
disp(x)

toc