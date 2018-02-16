function [X] = dataset(g):
    x1 = rand(1,g)*5+7;
    x2 = rand(1,g)*5+7;
    x3 = rand(1,g)*5;
    x4 = rand(1,g)*5;
    y1 = rand(1,g)*5;
    y2 = rand(1,g)*5+7;
    y3 = rand(1,g)*5;
    y4 = rand(1,g)*5+7;
    x=[x1,x2,x3,x4];
    y=[y1,y2,y3,y4];
    X=[x;y];
end
