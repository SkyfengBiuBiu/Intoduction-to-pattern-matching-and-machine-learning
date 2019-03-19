function[similar_label]=cifar_10_1NN(x,trdata,trlabels)

x = cast(x, 'int8');
trdata= cast(trdata, 'int8');
distance=sum((x-trdata).^2,2);
sorted_distance=sort(distance);
least_distance=sorted_distance(1);
index=find(distance==least_distance);
similar_label=double(trlabels(index(1),1));