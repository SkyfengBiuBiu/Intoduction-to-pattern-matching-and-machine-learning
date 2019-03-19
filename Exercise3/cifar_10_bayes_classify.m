function [c]=cifar_10_bayes_classify(f,mu,sigma,p)

posterior=zeros(10,1);

for cl=1:10
   norm=normpdf(f(1),mu(cl,1),sigma(cl,1))*normpdf(f(2),mu(cl,2),sigma(cl,2))*normpdf(f(3),mu(cl,3),sigma(cl,3));
   posterior(cl)=norm*p(cl);      
end

[~,I]=max(posterior);
c=I-1;