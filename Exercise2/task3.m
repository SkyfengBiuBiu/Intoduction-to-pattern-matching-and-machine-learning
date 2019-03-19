gt=te_labels';
for i = 1:size(te_data,1)
     k(i)=  cifar_10_rand(te_data(i,:));
end

pred=k;
disp(cifar_10_evaluate(pred,gt));