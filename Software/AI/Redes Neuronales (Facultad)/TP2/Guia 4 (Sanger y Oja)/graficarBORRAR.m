function f = graficarBORRAR(x1,x2,w)
    y1 = out(x1,w);
    y2 = out(x2,w);  
    plot(y1(1,:),y1(2,:),'r*',y2(1,:),y2(2,:),'b+')
end