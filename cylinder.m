r1=input('enter the inner raidus of cylinder: ');
r2=input('enter the outer raidus of cylinder: ');
t1=200;
t2=40;
delt=t1-t2;
R=r1/r2;
rx=r1:0.001:r2;
k=(t1*log(r2))-(t2*log(r1));
t=zeros(1,length(rx));
for i=1:length(rx)
    t(i)=(((delt)*log(rx(i)))/log(R))+(k/log(1/R));
    i=i+1;
end
plot(rx, t)
title("cylindrical system")
xlabel("raidus")
ylabel("temperature")
