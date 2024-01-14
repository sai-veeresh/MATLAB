r1=input('enter the inner radius of sphere: ');
r2=input('enter the outer radius of sphere: ');
t1=input('enter the inner temperature: ');
t2=input('enter the outer temperature: ');
%% 
delt=t1-t2;
rx=r1:0.001:r2;
t=zeros(1, length(rx));
%%
for i=1:length(rx)
    t(i)=t1-((r2/rx(i))*(delt)*((rx(i)-r1)/(r2-r1)));
    i=i+1;
end
%%
plot(rx,t)
title("spherical system")
xlabel("radius")
ylabel("temprature")

