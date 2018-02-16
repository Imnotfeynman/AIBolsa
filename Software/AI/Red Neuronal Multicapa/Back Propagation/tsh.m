
for i = 1 : 5;
   In_Set(:,i) = Volume(i*7:4+7*i);
   
   Target_Set(i,1) = (Close(5+7*i,1) - Close(7*i,1)) *100 / Close(7*i,1); % porcentaje de cambio
end