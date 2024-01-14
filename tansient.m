l=input('Enter the the length of slab: ');
tau=input ('Enter the time in seconds: ');
ts=input('Enter the surface temprature: ');
to=input('enter the intial temperature: ');
a=20;
%% 
theta=to-ts;
xi=linspace(0,l,10);
taui=linspace(0,tau,10);
[x,t]=meshgrid(xi, taui);
%%
for i=1:length(x)
    for j=1:length(t)
        th(i,j)=erfc(x(i,j)/sqrt(a*t(i,j)))*theta;
        j=j+1;
    end
    i=i+1;
end
%%
subplot(2,1,1)
mesh(t,x,th)
ylabel("length")
xlabel('time')
zlabel('temperature')
%%
subplot(2,1,2)
plot(xi,th)
hold off