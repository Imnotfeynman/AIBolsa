function [Error,ErrorVa]=entrenamiento(x,z,u,v,w1,w2,w1v,w2v)
    Error=[]
    ErrorVa=[]
    [w1,w2,w1v,w2v,E,Ev,Md,MdV,errorG,errorV]=backprop(x,z,u,v,0.01,0,w1,w2,w1v,w2v,300);
    Error=[Error,errorG];
    ErrorVa=[ErrorVa,errorV];
    [w1,w2,w1v,w2v,E,Ev,Md,MdV,errorG,errorV]=backprop(x,z,u,v,0.001,0.1,w1,w2,w1v,w2v,300);
    Error=[Error,errorG];
    ErrorVa=[ErrorVa,errorV];
    [w1,w2,w1v,w2v,E,Ev,Md,MdV,errorG,errorV]=backprop(x,z,u,v,0.0001,0.1,w1,w2,w1v,w2v,300);
    Error=[Error,errorG];
    ErrorVa=[ErrorVa,errorV];
    [w1,w2,w1v,w2v,E,Ev,Md,MdV,errorG,errorV]=backprop(x,z,u,v,0.00001,0.1,w1,w2,w1v,w2v,300);
    Error=[Error,errorG];
    ErrorVa=[ErrorVa,errorV];     
n=0:1199;
plot(n,Error,n,ErrorVa)
end
            
            