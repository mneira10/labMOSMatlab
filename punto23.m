syms x1 y1 z

z = (1-x1)^2 + 100*(y1-x1^2)^2;
grad_z = gradient(z);
H = hessian(z);


x = double(5); 
y = double(5);
figure

ezsurf(z)
hold on 
alpha  =1; 
conver = 0.001;



i = 0 ;
;


while (norm(double(subs(grad_z,[x1,y1],[x,y])))>conver)
    t = alpha*double(subs(inv(H)*grad_z,[x1,y1],[x,y]))';
    x = x - t(1);
    y = y - t(2);
    fprintf("%d \n",i);
    

  
    i=i+1;
    
end
scatter3(x,y,myFunc(x,y));
hold off

fprintf("x vale %d y y vale %d , z %d\n",x,y,myFunc(x,y));

function f = myFunc(x,y) 
    f = (1-x)^2 + 100*(y-x^2)^2     ;
end
