syms x y 

y = 3*x^3 - 10*x^2 - 56*x+50;


figure
ezplot(y)
hold on 
alpha  =1; 
conver = 0.001;
x = 5; 
x_viejo = 1231;
i = 0 ;
!scatter(x,myFunc(x));

while (abs(x_viejo-x)>conver)
    x_viejo = x;
    x = x - alpha * (myFunc(x))/(9*x^2-20*x-56);
    fprintf("%d \n",i)
    !scatter(x,myFunc(x));
    
end
hold off

fprintf("x vale %d y y vale %d \n",x,myFunc(x));

function f = myFunc(x) 
    f = 3*x^3-10*x^2 - 56*x + 50     ;
end
