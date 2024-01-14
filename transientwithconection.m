x=input('enter the  length of slab: ');
t=input('enter the time in seconds: ');
h=input('enter the convective heat transfer coefficient: ');
k=input('enter the thermal conductivity: ');
a=input('enter the thermal diffusivity: ');
%%
eta=linspace(0,(h*(x/k)),20);
tau=linspace(0,((h/k)*(sqrt(a*t))),20);
[X,T]=meshgrid(eta,tau);
for i=1:length(X)
    for j=1:length(T)
        theta(i,j)=erfc(X(i,j)/2*T(i,j))-exp(X(i,j)+T(i,j)^2)*(erfc(X(i,j)/2*T(i,j))+T(i,j));
        j=j+1;
    end
    i=i+1;
end
%% 
mesh(T,X,theta)
ylabel('length')
xlabel('time')
zlabel('temperature')