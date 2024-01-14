dx=0.2;
x=0:dx:3;
y=x;
[X,Y]=meshgrid(x,y);
T=ones(length(x),length(y));
T(1,:)=0;
T(end,:)=100;
T(:,1)=100;
T(:,end)=100;
for i=2:length(y)-1
    for j=2:length(x)-1
        T(i,j)=(T(i+1,j)+T(i-1,j)+T(i,j+1)+T(i,j-1))/4;
    end
end

contourf(X,Y,T', 'linecolor', 'non')
colorbar
colormap('jet')