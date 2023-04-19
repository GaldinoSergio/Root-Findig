function [x,Iter] = Muller(f,x1,x3,tol)
Iter=0;
y1= f(x1);
y3= f(x3);
erro=abs(x3-x1);
xOld=0.5*(x1+x3);
while erro > tol 
    Iter=Iter+1;
    x2=0.5*(x1+x3);
    y2=f(x2);
    h=x3-x1;
    s1=y1-y3;
    s2=y2-y3;
    a=(2*s1-4*s2)/h^2;
    b=(s1-4*s2)/h;
    c=y3;
    delta=sqrt(b^2-4*a*c);
    if (a == 0)
        'a == 0'
       x=x3-c/b;  
    else
       r1=x3+(-b+delta)/(2*a);
       r2=x3+(-b-delta)/(2*a);
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
   if  (yx*y1 <0)
         x3=x;
         y3=yx;
   end
   if  (yx*y3 <0)
         x1=x;
         y1=yx;
   end   
   if  (yx*y2 <0)
     if  (x < x2)
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
end
endfunction