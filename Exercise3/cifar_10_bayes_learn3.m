function[mu,sigma,p]=cifar_10_bayes_learn3(F,labels)

[m,n] = size(F);
mu=zeros(10,n);
sigma=zeros(10,power(n,2));
p=zeros(10,1);

for i=1:10
    a=zeros(1,n);
    z=0;
    for j=1:m
        if labels(j)==(i-1)
            a=[a;F(j,:)];
            z=z+1;
        end
    end
    a(1,:)=[];
    mu(i,:)=mean(a);
    sigma(i,:)=reshape(cov(a),1,power(n,2));
    p(i)=z/length(F);
end
    

