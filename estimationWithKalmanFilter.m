x=randn(2,1000);
moy_x=mean(x(1,:));
ybar=[1;3;4];
Gamma_y=[3 2;2 4]
y=sqrtm(Gamma_y)*x
y=y+ybar
for i=1:1:2
    ybar.calc(i)=mean(y(i,:))
end
Yt=ybar_calc'

for i=1:1:2
    for j=1:1:2
    Gamma_y_calc(i,j)=mean(Yt(i,:)*Yt(j,:)')
end
end

figure(1)
clf
plot(x(1,:),x(2,:),'.')
hold on
plot(Yt(1,:), Yt(2,:),'.r')
figure(1)
plot(x(1,:), x(2,:), '.')
xbar1=mean(x(1,:));   %val obtenu  doit etre proche de 0
xbar2=mean(x(2,:));

ybar=[1;3];
gamma_y=[3 2;2 4]
gamma_y_demi=sqrtm(gamma_y)
y=gamma_y_demi*x+ybar;
plot(y(1,:),y(2,:),'.')
ybar1=mean(y(1,:))
ybar2=mean(y(2,:))
ytilde=y-ybar
gamma_y_calc(1,1)=mean(ytilde(1,:)*ytilde(1,:)')
gamma_y_calc(2,2)=mean(ytilde(2,:)*ytilde(2,:)')
gamma_y_calc(1,2)=mean(ytilde(1,:)*ytilde(2,:)')
gamma_y_calc(2,1)=mean(ytilde(2,:)*ytilde(1,:)')
figure(2)
plot(ytilde(1,:),ytilde(2,:),'.')