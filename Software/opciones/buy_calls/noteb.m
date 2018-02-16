c=0;
l = length(s)/2;
for kk = 1 : l-2;
   c = 1+c;
    %s(kk - c,:) = [];
    s(c + 1,:) = [];
    %s(kk - c + 2,:) = [];
end
