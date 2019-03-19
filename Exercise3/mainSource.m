
for i =1:length(tr_data)
    f=cifar_10_features(tr_data(i,:));
    F(i,:)=f;
end

[mu,sigma,p]=cifar_10_bayes_learn(F,tr_labels);

%test with the testing data and labels

for k =1:length(te_data)
    H(k,:)=cifar_10_features(te_data(k,:));
end

for j=1:length(H)
    c(j)=cifar_10_bayes_classify(H(j,:),mu,sigma,p);
end

cifar_10_evaluate(c,te_labels');