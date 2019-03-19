function[mu,sigma,p]=cifar_10_bayes_learn2(F,labels)

mu=zeros(10,3);
sigma=zeros(10,9);
p=zeros(10,1);

for i=1:10
    a=zeros(1,3);
    z=0;
    for j=1:length(F)
        if labels(j)==(i-1)
            a=[a;F(j,:)];
            z=z+1;
        end
    end
    a(1,:)=[];
    mu(i,:)=mean(a);
    sigma(i,:)=reshape(cov(a),1,9);
    p(i)=z/length(F);
end
    

