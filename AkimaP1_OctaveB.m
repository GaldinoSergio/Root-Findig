function [x,Iter] = AkimaP1(f,x1,x3,tol)
Iter=0;
y1= f(x1);
y3= f(x3);
erro=abs(x3-x1);
xOld=0.5*(x1+x3);
while erro > tol 
    Iter=Iter+1;
    x2=0.5*(x1+x3);
    y2=f(x2);
    p0=y3;
    t3=((x3-x1)^2*(y2-y3)+(x2-x3)^2*(y3-y1))/((x3-x1)^2*(x2-x3)+(x2-x3)^2*(x3-x1));
    p1=t3;
    p2=(y1-y3-(x1-x3)*t3)/(x1-x3)^2;
    A=p2;
    B=p1-p2*2*x3;
    C=p0-p1*x3+p2*x3^2;
    if (A == 0)
        'A == 0'
       x=-C/B;  
    else
       r1=(-B+sqrt(B^2-4*A*C))/(2*A);
       r2=(-B-sqrt(B^2-4*A*C))/(2*A);
       if and( r1 > x1 , r1 < x3)
           x=r1;
       end
       if and( r2 > x1 , r2 < x3)
          x=r2;
      end
   end
   yx=f(x);
   if (yx==0)
      break
   end
   if (Iter > 1)
          erro=abs(x - xOld);
   end
   xOld=x;
   if  (y2*yx <0)
      if  (x< x2)
         x1=x;
         y1=yx;
         x3=x2;
         y3=y2;
      else
         x1=x2;
         y1=y2;
         x3=x;
         y3=yx;
      end
   end
   if  (y1*yx <0)
     if  (x< x1)
         x1=x;
         y1=yx;
         x3=x1;
         y3=y1;
      else
         x3=x;
         y3=yx;
      end
   end   
   if  (y3*yx <0)
     if  (x< x3)
         x1=x;
         y1=yx;
      else
         x1=x3;
         y1=y3;
         x3=x;
         y3=yx;
      end
   end   
end
endfunction