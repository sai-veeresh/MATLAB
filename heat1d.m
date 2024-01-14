%% enter the constant values
n=input('enter the length of slab:');
%% temperature profile 1d
t1=100;
t2=40;
x=0:0.001:n;
t=zeros(1, length(x));
for i=1:length(x)
    t(i)=t1-(((t1-t2)*x(i))/n);
    i=i+1;
end
%% Temperature plot
plot(x,t)
yyaxis right
plot(t)
title("1d heat conduction")
xlabel("length")
ylabel("temperature")

