xb=[80;90;99;108;116;125;133;141;151; 160;169;179;180] 
yb=[0;-2;-5;-9;-15;-18;-23;-29;-28;-25;-21;-20;-17]
xf=0  
yf=50 
V=20  

function [D]=Dist(XB, YB, XF, YF)   
      
    D=sqrt((YB-YF)^2+(XB-XF)^2)           // error was here
endfunction

function [xf, yf]=NextPos(XB, YB, XF, YF, V)  

   [d]=Dist(XB,YB,XF,YF)
   sin0=(YB-YF)/d
   cos0=(XB-XF)/d
   xf=XF+V*cos0
   yf=YF+V*sin0
endfunction

for i=1:12
  [d]=Dist(xb(i),yb(i),xf,yf)
  disp(d)
   if d <=10 then    
   disp("bombed")
   break
elseif i > 12 then   //error was here
    disp("bomber escaped")
    else
   [xf,yf]=NextPos(xb(i),yb(i),xf,yf,V)
   end
end;
