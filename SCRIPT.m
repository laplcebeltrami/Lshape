%(C) 2015- Moo K. Chung
% University of Wiscosnin-Madison
%
% The script computes the eigenfunction of Laplacain in L-shaped irregular
% domain. Then displays the computed eigenfunctions. It also displays heat
% kernel.


[p,e,t] = initmesh('lshapeg'); 
[p,e,t] = refinemesh('lshapeg',p,e,t); 
[p,e,t] = refinemesh('lshapeg',p,e,t); 


[v,l] = pdeeig('lshapeb',p,e,t,1,0,1,[0 400]); 

figure;
pdesurf(p,t,v(:,1)) 
colormap('hot'); colorbar
axis off
figure_bg('w')
figure_bigger(20)
caxis([-0.05 0.05])
view([0 90])

figure;
pdesurf(p,t,v(:,2)) 
colormap('hot'); colorbar
axis off
figure_bg('w')
figure_bigger(20)
caxis([-0.05 0.05])
view([0 90])

figure;
pdesurf(p,t,v(:,3)) 
colormap('hot'); colorbar
axis off
figure_bg('w')
figure_bigger(20)
caxis([-0.05 0.05])
view([0 90])

figure;
pdesurf(p,t,v(:,10)) 
colormap('hot'); colorbar
axis off
figure_bg('w')
figure_bigger(20)
caxis([-0.05 0.05])
view([0 90])

figure;
pdesurf(p,t,v(:,21)) 
colormap('hot'); colorbar
axis off
figure_bg('w')
figure_bigger(20)
caxis([-0.05 0.05])
view([0 90])

figure;
pdesurf(p,t,v(:,30)) 
colormap('hot'); colorbar
axis off
figure_bg('w')
figure_bigger(20)
caxis([-0.05 0.05])
view([0 90])


% heat kernel construction

sigma=0.01;
expansion=zeros(2145,1);
deg=70;

psip=v(300,1:deg);

for j=1:deg 
        psiq=v(:,j);
        lambda=l(j);
        expansion=expansion + exp(-sigma*lambda)*psip(j)*psiq; %heat kernel expansion
end

figure;
pdesurf(p,t,expansion) 
colormap('hot'); colorbar
axis off
figure_bg('w')
figure_bigger(20)
caxis([0 0.01])
view([0 90])

%translate and scale 
sigma=0.05;
expansion=zeros(2145,1);

psip=v(300,1:deg);

for j=1:deg 
        psiq=v(:,j);
        lambda=l(j);
        expansion=expansion + exp(-sigma*lambda)*psip(j)*psiq; %heat kernel expansion
end

figure;
pdesurf(p,t,expansion) 
colormap('hot'); colorbar
axis off
figure_bg('w')
figure_bigger(20)
caxis([0 0.001])
view([0 90])

%center
sigma=0.01;
expansion=zeros(2145,1);
deg=70;

psip=v(500,1:deg);

for j=1:deg 
        psiq=v(:,j);
        lambda=l(j);
        expansion=expansion + exp(-sigma*lambda)*psip(j)*psiq; %heat kernel expansion
end

figure;
pdesurf(p,t,expansion) 
colormap('hot'); colorbar
axis off
figure_bg('w')
figure_bigger(20)
caxis([0 0.01])
view([0 90])

sigma=0.1;
expansion=zeros(2145,1);

psip=v(500,1:deg);

for j=1:deg 
        psiq=v(:,j);
        lambda=l(j);
        expansion=expansion + exp(-sigma*lambda)*psip(j)*psiq; %heat kernel expansion
end
figure;
pdesurf(p,t,expansion) 
colormap('hot'); colorbar
axis off
figure_bg('w')
figure_bigger(20)
caxis([0 0.0005])
view([0 90])

%left
sigma=0.01;
expansion=zeros(2145,1);
deg=70;

psip=v(100,1:deg);

for j=1:deg 
        psiq=v(:,j);
        lambda=l(j);
        expansion=expansion + exp(-sigma*lambda)*psip(j)*psiq; %heat kernel expansion
end

figure;
pdesurf(p,t,expansion) 
colormap('hot'); colorbar
axis off
figure_bg('w')
figure_bigger(20)
caxis([0 0.01])
view([0 90])

sigma=0.1;
expansion=zeros(2145,1);

psip=v(100,1:deg);

for j=1:deg 
        psiq=v(:,j);
        lambda=l(j);
        expansion=expansion + exp(-sigma*lambda)*psip(j)*psiq; %heat kernel expansion
end

figure;
pdesurf(p,t,expansion) 
colormap('hot'); colorbar
axis off
figure_bg('w')
figure_bigger(20)
caxis([0 0.0003])
view([0 90])

%right 
sigma=0.01;
expansion=zeros(2145,1);
deg=70;


psip=v(40,1:deg);

for j=1:deg 
        psiq=v(:,j);
        lambda=l(j);
        expansion=expansion + exp(-sigma*lambda)*psip(j)*psiq; %heat kernel expansion
end

figure;
pdesurf(p,t,expansion) 
colormap('hot'); colorbar
axis off
figure_bg('w')
figure_bigger(20)
caxis([0 0.01])
view([0 90])



sigma=0.1;
expansion=zeros(2145,1);

psip=v(40,1:deg);

for j=1:deg 
        psiq=v(:,j);
        lambda=l(j);
        expansion=expansion + exp(-sigma*lambda)*psip(j)*psiq; %heat kernel expansion
end

figure;
pdesurf(p,t,expansion) 
colormap('hot'); colorbar
axis off
figure_bg('w')
figure_bigger(20)
caxis([0 0.0005])
view([0 90])





