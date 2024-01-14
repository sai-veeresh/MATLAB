%%
W=input('enter the width: ');
H=input('enter the height: ');
nx=51;
ny=51;
dx=W/(nx-1);
dy=H/(ny-1);
T=25*ones(nx,ny);
tl=120; 
tr=40; 
tt=40; 
tb=40;
T(1, 2:(ny-1))=tl;
T(2:(nx-1), ny)=tt;
T(nx, 2:(ny-1))=tr;
T(2:(nx-1), 1)=tb;
T(1,1)=(tl+tb)/2;
T(nx,1)=(tr+tb)/2;
T(nx,ny)=(tr+tt)/2;
T(1,ny)=(tl+tt)/2;
%%
    for j=2:(ny-1)
        for i=2:(nx-1)
        T(i,j)=((dx^2)*(T(i+1, j)+T(i-1, j))+(dy^2)*(T(i, j+1)+T(i, j-1)))/(2*(dx^2+dy^2));
        end
    end
%%
x=0:dx:W;
y=0:dy:H;
colormap(jet)
contourf(x,y,T')
colorbar
xlabel('width')
ylabel('height')