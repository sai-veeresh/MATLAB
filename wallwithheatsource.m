%% plane wall with heat genraltion 
l=input('enter the lenght of wall: ');
qdot=390;
k=24;
ht=qdot/(2*k);
to=input('enter the outside temperature: ');
lx=-l:0.01:l;
t=zeros(0,length(lx));
%%
for i=1:length(lx)
    t(i)= (ht*((l^2)-(lx(i)^2)))+to;
    i=i+1;
end
%%
plot(lx,t)
grid on
axis on
