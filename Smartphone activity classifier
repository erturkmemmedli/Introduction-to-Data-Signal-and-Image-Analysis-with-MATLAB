load humanactivity
D_train = feat(1:2:end,:);
class_train = actid(1:2:end);
D_test = feat(2:2:end,:);
class_test = actid(2:2:end);

mdl = my_fitpca(D_train,class_train);
[class_est, score_est] = my_predictpca(mdl,D_test);
sum(class_est==class_test)/length(class_est)*100

% Answer: 96.9345
