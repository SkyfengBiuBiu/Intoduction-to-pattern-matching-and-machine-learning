function[accuracy]=cifar_10_evaluate(pred,gt)

return_value=(pred==gt);
accuracy=mean(return_value);
disp(num2str((accuracy)*100)+"%");
        