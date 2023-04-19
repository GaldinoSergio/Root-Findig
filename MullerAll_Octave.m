format long
tol =1e-14  
ItMax=500            
'#####   1'
f = @(x)x^3-1
[root,iter]=Muller(f,0.6,1.5,tol)
f(root)
'#####   2'
f =@(x)x^2*(x^2/3+sqrt(2)*sin(x))-sqrt(3)/18  
[root,iter]=Muller(f,0.1,1,tol)
f(root)
'#####   3'
f =@(x)11*x^11-1  
[root,iter]=Muller(f,0.1,1,tol)
f(root)
'#####   4'
f = @(x)x^3+1
[root,iter]=Muller(f,-1.8,-0.5,tol)
f(root)
'#####   5'
f = @(x)x^3-2*x-5
[root,iter]=Muller(f,2,3,tol)
f(root)
'#####   6'
f = @(x)2*x*exp(-5)+1-2*exp(-5*x)
[root,iter]=Muller(f,0,1,tol)
f(root)
'#####   7'
f = @(x)2*x*exp(-10)+1-2*exp(-10*x)
[root,iter]=Muller(f,0,1,tol)
f(root)
'#####   8'
f = @(x)2*x*exp(-20)+1-2*exp(-20*x)
[root,iter]=Muller(f,0,1,tol)
f(root)
'#####   9'
f = @(x)(1+(1-5)^2)*x-(1-5*x)^2
[root,iter]=Muller(f,0,0.2,tol)
f(root)
'#####   10'
f = @(x)(1+(1-10)^2)*x-(1-10*x)^2
[root,iter]=Muller(f,0,0.2,tol)
f(root)
'#####   11'
f = @(x)(1+(1-20)^2)*x-(1-20*x)^2
[root,iter]=Muller(f,0,0.2,tol)
f(root)
'#####   12'
f = @(x)x^2-(1-x)^5
[root,iter]=Muller(f,0,0.9,tol)
f(root)
'#####   13'
f = @(x)x^2-(1-x)^10
[root,iter]=Muller(f,0,0.9,tol)
f(root)
'#####   14'
f =  @(x)x^2-(1-x)^20
[root,iter]=Muller(f,0,0.9,tol)
f(root)
'#####   15'
f =  @(x)(1+(1-5)^4)*x-(1-5*x)^4
[root,iter]=Muller(f,0,0.2,tol)
f(root)
'#####   16'
f =   @(x)(1+(1-10)^4)*x-(1-10*x)^4
[root,iter]=Muller(f,0,0.2,tol)
f(root)
'#####   17'
f =    @(x)(1+(1-20)^4)*x-(1-20*x)^4
[root,iter]=Muller(f,0,0.2,tol)
f(root)
'#####   18'
f =   @(x)exp(-5*x)*(x-1)+x^5
[root,iter]=Muller(f,0,1,tol)
f(root)
'#####   19'
f =  @(x)exp(-10*x)*(x-1)+x^10
[root,iter]=Muller(f,0,1,tol)
f(root)
'#####   20'
f =  @(x)exp(-20*x)*(x-1)+x^20
[root,iter]=Muller(f,0,1,tol)
f(root)
'#####   21'
f = @(x)x^2+sin(x/5)-1/4
[root,iter]=Muller(f,0,1,tol)
f(root)
'#####   22'
f =  @(x)x^2+sin(x/10)-1/4
[root,iter]=Muller(f,0,1,tol)
f(root)
'#####   23'
f = @(x)x^2+sin(x/20)-1/4
[root,iter]=Muller(f,0,1,tol)
f(root)






