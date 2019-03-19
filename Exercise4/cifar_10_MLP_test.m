function estlabel=cifar_10_MLP_test(tedata,net,n)


for j =1:length(tedata)
    f=cifar_10_features3(tedata(j,:),n);
    F(j,:)=f;
end
x=F';
est_labels_test=sim(net,x);
est_labels_test=vec2ind(est_labels_test);
est_labels_test=est_labels_test-1;
estlabel=est_labels_test';