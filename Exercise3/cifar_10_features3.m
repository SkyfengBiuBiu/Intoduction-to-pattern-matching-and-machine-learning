function[f]=cifar_10_features3(x,N)

size=power(N,2);
feature=3072/size;

x=reshape(x,size,feature);

f=mean(x);

