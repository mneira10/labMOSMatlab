syms x1 y1 z

z = (1-x1)^2 + 100*(y1-x1^2)^2;
grad_z = gradient(z);
H = hessian(z);


figure
ezsurf(z)

fprintf("%d%\n",temp2);
