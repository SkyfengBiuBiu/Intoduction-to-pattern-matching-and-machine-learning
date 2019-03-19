
full_N=[32 16 8 4];

 C=[];
for l=1:4
    N=full_N(l);
    F=[];
    H=[];
   
for i =1:length(tr_data)
    f=cifar_10_features3(tr_data(i,:),N);
    F(i,:)=f;
end

[mu,sigma,p]=cifar_10_bayes_learn3(F,tr_labels);
 
%test with the testing data and labels

for k =1:length(te_data)
     H(k,:)=cifar_10_features3(te_data(k,:),N);
 end
 
for j=1:length(H)
     c(j)=cifar_10_bayes_classify3(H(j,:),mu,sigma,p);
end

disp("N="+N+" the accuracy is "+cifar_10_evaluate(c,te_labels'));
C(l)=cifar_10_evaluate(c,te_labels');
end;

plot(N,C);