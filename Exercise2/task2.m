pred=floor(rand(1,10000)*10)';
gt=te_labels;

cifar_10_evaluate(pred,gt)