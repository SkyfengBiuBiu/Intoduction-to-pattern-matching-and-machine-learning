function [net]=cifar_10_MLP_train(trdata,trlabels,n)

for i =1:length(trdata)
    f=cifar_10_features3(trdata(i,:),n);
    F(i,:)=f;
end

%[x,t] = iris_dataset;
trlabels=trlabels+1;
tr=trlabels';
t= ind2vec(double(tr));
x=F';
net1 = patternnet([10 10]);
net = train(net1,x,t);


