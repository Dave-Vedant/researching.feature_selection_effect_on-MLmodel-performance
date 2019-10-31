rng default
close all
clc;

% Include dependencies
addpath('C:\Users\kalug\AppData\Roaming\MathWorks\MATLAB Add-Ons\Toolboxes\Feature Selection Library\FSLib_v6.2.1_2018\lib'); % dependencies
addpath('C:\Users\kalug\AppData\Roaming\MathWorks\MATLAB Add-Ons\Toolboxes\Feature Selection Library\FSLib_v6.2.1_2018\methods'); % FS methods
addpath(genpath('C:\Users\kalug\AppData\Roaming\MathWorks\MATLAB Add-Ons\Toolboxes\Feature Selection Library\FSLib_v6.2.1_2018\lib\drtoolbox'));





data = xlsread('Gear23.xlsx');
X = data(:,1:end-1);
Y = data(:,end);
%X=normalize(X);


% Randomly partitions observations into a training set and a test
d_split = 0.20;
P = cvpartition(Y,'Holdout',d_split);

X_train = double( X(P.training,:) );
Y_train = (double( Y(P.training) ));

X_test = double( X(P.test,:) );
Y_test = (double( Y(P.test)));


   



disp('X_train size')
size(X_train)

disp('Y_train size')
size(Y_train)

disp('X_test size')
size(X_test)

disp('Y_test size')
size(Y_test)

%for loop
for loop = 1:10
%Decision tree
HypeDT = fitctree(X_train,Y_train,'OptimizeHyperparameters','all');
C = predict(HypeDT,X_test);
err_rate = sum(Y_test~= C)/P.TestSize; % mis-classification rate
accuracy=1-err_rate;
conMat = confusionmat(Y_test,C); % the confusion matrix
disp(err_rate)
disp(accuracy)
cvmodel = crossval(HypeDT,'kfold',10);
cvError = kfoldLoss(cvmodel);
for i =1:size(conMat,1)
    precision(i)=conMat(i,i)/sum(conMat(i,:)); 
end
precision(isnan(precision))=[];
Precision=sum(precision)/size(conMat,1);

for i =1:size(conMat,1)
    recall(i)=conMat(i,i)/sum(conMat(:,i));  
end

Recall=sum(recall)/size(conMat,1);

F_score=2*Recall*Precision/(Precision+Recall);
tableA(loop,:)=[accuracy F_score];
end






