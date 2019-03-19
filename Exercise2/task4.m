N = size(te_data,1) ;
g = zeros(N,1) ;
for i = 1:N
     g(i)= cifar_10_1NN(te_data(i,:),tr_data,tr_labels);
end

cifar_10_evaluate(g,te_labels)

