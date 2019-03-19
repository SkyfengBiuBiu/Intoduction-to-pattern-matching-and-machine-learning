N=[32 16 8 4];
ac=zeros(1,4);

for i=1:4
    n=N(i);
[net]=cifar_10_MLP_train(tr_data,tr_labels,n);
view(net);
estlabel=cifar_10_MLP_test(te_data,net,n);
ac(i)=cifar_10_evaluate(te_labels,estlabel);
end

plot(N,ac);
%[10]->25.17%
%[10 10]->25.19%