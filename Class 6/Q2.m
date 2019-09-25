x= [0  0.5      1.0      1.5     2.0     2.5];
y= [0  0.2      0.4      0.6     0.8     1.0];
z= [ 0   0  	  0   	   1  	    0.6      0.4
     0   0.0047   0.0374   0.1263   0.2994   0.5848
     0   0.0059   0.0472   0.1592   0.3772   0.7368
     0   0.0067   0.0540   0.1822   0.4318   0.8434
     0   0.0074   0.0594   0.2005   0.4753   0.9283
     0   0.0080   0.0640   0.2160   0.5120   1.0000];
figure(1);
surf(z);
figure(2);
surf(x,y,z);
%surf(z) has a uniform scale for both x and y axes for surf(x,y,z) it is
 %from 0 to xmax for x and similarly for y
[x1,y1] = meshgrid(0:0.25:2.5,0:0.1:1);
z1=interp2(x,y,z,x1,y1);
z2=interp2(x,y,z,x1,y1,'spline');
figure(3)
surf(x1,y1,z1);
%spline interp
figure(4)
surf(x1,y1,z2);
%normal interp
figure(5)
contour(x1,y1,z1);
%spline
figure(6)
contour(x1,y1,z2);
