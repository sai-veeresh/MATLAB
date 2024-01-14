%% Designing the square well
a = input('Enter the the length of well:');
n = input('Enter the number of energy values:');
h = 6.63e-34;
syms x
psi=sym('psi',[1,n]);
%% Creating the wave function
for i=1:n
    psi(i) = ((2/a)^0.5)*sin((i.*pi/a)*x);
    i+1;
end    
psi
%% energy values
m=input('enter the mass of particle:');
E=zeros(1,n);
for i=1:n
    E(i)=((i*h)^2)/(8*m*(a^2));
    i+1;
end
E
%% wave function values
x0=0:0.01:a;

for i =1:n
    for j=1:range(x0) % here the energy 
        psif(:,i)=eval(subs(psi(i), x, x0));
        j+1;
    end
    i+1;

end
%% plotting energy and wave funtions 
p=1:n;
subplot(3,2,1)
plot(x0,psif)
title('Wave funtion of a particle in box')
xlabel('Length of box')
ylabel('\Psi(x)')
subplot(3,2,2)
plot(p,E)
title('Energy levels')
xlabel('No. of levels')
ylabel('Energy')
%% probablity distribution 
pdf= psi.^2
subplot(3,1,3)
fplot(pdf)
title("probablity distribution")
