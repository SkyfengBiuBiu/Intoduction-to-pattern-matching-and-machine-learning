if exist('tr_data','var') && size(tr_data,1) == 50000
  disp('Seems that data exists, clean tr_data to re-read!');
  return;
end;

conf.cifar10_dir = '.\cifar-10-batches-mat\cifar-10-batches-mat';
conf.train_files = {'data_batch_1.mat',...
                    'data_batch_2.mat',...
                    'data_batch_3.mat',...
                    'data_batch_4.mat',...
                    'data_batch_5.mat'};
conf.test_file = 'test_batch.mat';
conf.meta_file = 'batches.meta.mat';

load(fullfile(conf.cifar10_dir,conf.meta_file));

% Read training data and form the feature matrix and target output
tr_data = [];
tr_labels = [];
fprintf('Reading training data...\n');
for train_file_ind = 1:length(conf.train_files)
  fprintf('\r  Reading %s', conf.train_files{train_file_ind});
  load(fullfile(conf.cifar10_dir,conf.train_files{train_file_ind}));
  tr_data = [tr_data; data];
  tr_labels = [tr_labels; labels];
end;
fprintf('Done!\n');

% Plot random figures 32x32=1024 pixels r,g,b channels
fprintf('Showing training data...\n');
for data_ind = 1:size(tr_data,1)
  if rand() < 0.0005
    data_sample = tr_data(data_ind,:);
    img_r = data_sample(1:1024);
    img_g = data_sample(1025:2048);
    img_b = data_sample(2049:3072);
    data_img = zeros(32,32,3);
    data_img(:,:,1) = reshape(img_r, [32 32])';
    data_img(:,:,2) = reshape(img_g, [32 32])';
    data_img(:,:,3) = reshape(img_b, [32 32])';
    imshow(data_img./256);
    title(label_names(tr_labels(data_ind)+1));
    drawnow;
    pause(1);
    %input('  Training example <PRESS RETURN>')
  end;
end;
fprintf('Done!\n');

% Read test data and form the feature matrix and target output
fprintf('Reading and showing test data...\n');
load(fullfile(conf.cifar10_dir,conf.test_file));
te_data = data;
te_labels = labels;

for data_ind = 1:size(te_data,1)
  if rand() < 0.0005
    data_sample = te_data(data_ind,:);
    img_r = data_sample(1:1024);
    img_g = data_sample(1025:2048);
    img_b = data_sample(2049:3072);
    data_img = zeros(32,32,3);
    data_img(:,:,1) = reshape(img_r, [32 32])';
    data_img(:,:,2) = reshape(img_g, [32 32])';
    data_img(:,:,3) = reshape(img_b, [32 32])';
    imshow(data_img./256);
    title(label_names(te_labels(data_ind)+1));
    drawnow;
    pause(1);
    %input('  Testing example <PRESS RETURN>')
  end;
end;
fprintf('Done!\n');

