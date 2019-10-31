rng default
clear all
close all
clc;

% Include dependencies
addpath('C:\Users\kalug\AppData\Roaming\MathWorks\MATLAB Add-Ons\Toolboxes\Feature Selection Library\FSLib_v6.2.1_2018\lib'); % dependencies
addpath('C:\Users\kalug\AppData\Roaming\MathWorks\MATLAB Add-Ons\Toolboxes\Feature Selection Library\FSLib_v6.2.1_2018\methods'); % FS methods
addpath(genpath('C:\Users\kalug\AppData\Roaming\MathWorks\MATLAB Add-Ons\Toolboxes\Feature Selection Library\FSLib_v6.2.1_2018\lib\drtoolbox'));

% Select a feature selection method from the list
listFS = {'UDFS','llcfs','cfs'};

[ methodID ] = readInput( listFS );
selection_method = listFS{methodID}; % Selected

% Load the data and select features for classification

data = xlsread('D:\M.Eng\Applied Machine Learning\Project\Datasets\Datasets\Gear16.xlsx');
X = data(:,1:end-1);
Y = data(:,end);
%X=normalize(X);


% Randomly partitions observations into a training set and a test
d_split = 0.20;
P = cvpartition(Y,'Holdout',d_split);

X_train = X(P.training,:) ;
Y_train = Y(P.training);

X_test =  X(P.test,:) ;
Y_test =  Y(P.test);

% number of features
numF = size(X_train,2);


% feature Selection on training data
switch lower(selection_method)
        
    case 'udfs'
        % Regularized Discriminative Feature Selection for Unsupervised Learning
        nClass = 2;
        ranking = UDFS(X_train , nClass );
        
    case 'cfs'
        % BASELINE - Sort features according to pairwise correlations
        ranking = cfs(X_train);
        
    case 'llcfs'
        % Feature Selection and Kernel Learning for Local Learning-Based Clustering
        ranking = llcfs(X_train);
        
    otherwise
        disp('Unknown method.')
end

%tabulate ranking
ranking;

disp('X_train size')
size(X_train)

disp('Y_train size')
size(Y_train)

disp('X_test size')
size(X_test)

disp('Y_test size')
size(Y_test)

k = 15; % select the first  best features
%for kFold = 1:10
%Decision tree
HypeDT = fitctree(X_train(:,ranking(1:k)),Y_train,'OptimizeHyperparameters','auto');
C = predict(HypeDT,X_test(:,ranking(1:k)));
CVMdl = crossval(HypeDT);
err_rate = sum(Y_test~= C)/P.TestSize; % mis-classification rate
accuracy=1-err_rate;
conMat = confusionmat(Y_test,C); % the confusion matrix
accur(kFold)=accuracy;
disp(err_rate)
disp(accuracy)
cvmodel = crossval(HypeDT,'kfold',10);
%cvError = kfoldLoss(cvmodel);
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
tableA(kFold,:)=[accuracy F_score];
%end





