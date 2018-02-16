function [w,error] = script()
    load('E:\Redes neuronales\TP 1\DATA\data 1\tp1_training_dataset_1datoslistos.mat')
    [w] = create(30,2);
    [w,error] = ojaM(x,w,0.01);
    pause(1);
    [w,error] = ojaM(x,w,0.001);
    pause(1);
    x1=[];
    x2=[];
    for i=1:400
        if z(1,i)==1
            x1 = [x1, x(:,i)];
        else
            x2 = [x2, x(:,i)];
        end
    end
    graficarBORRAR(x1,x2,w);
end

    
    