function [c]=cifar_10_bayes_classify3(f,mu,sigma,p)

[m,n] = size(f);
posterior=zeros(10,1);
sig=[];
for cl=1:10
   sig=reshape(sigma(cl,:),n,n);
   norm= mvnpdf(f,mu(cl,:),sig);
   posterior(cl)=norm*p(cl);      
end

[M,I]=max(posterior);
c=I-1;