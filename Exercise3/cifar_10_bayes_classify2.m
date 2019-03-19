function [c]=cifar_10_bayes_classify2(f,mu,sigma,p)

posterior=zeros(10,1);
sig=[];
for cl=1:10
   sig=reshape(sigma(cl,:),3,3);
   norm= mvnpdf(f,mu(cl,:),sig);
   posterior(cl)=norm*p(cl);      
end

[M,I]=max(posterior);
c=I-1;