function[f]=cifar_10_features(x)

x1=mean(x(1:1024));
x2=mean(x(1025:2048));
x3=mean(x(2049:3072));
f=[x1 x2 x3];