tic
%multivariable newton-raphson method
clc

%non-linear equations
f1=@(x) x1 + 2*x2 -2;
f2=@(x) x1.^2 + 4*x2.^2 -4;

x=[1 ;2];     %initial guess





for i=1:10
    
    J=[1 2;2*x(1) 8*x(2)];    %define jacobi
    f=-[x(1) + 2*x(2)-2 ; x(1).^2 + 4*x(2).^2-4];  %function vector
    
    dx=inv(J)*f;
    x=x+dx;
 
end
disp('Solution vector is : ')
disp(x)

toc