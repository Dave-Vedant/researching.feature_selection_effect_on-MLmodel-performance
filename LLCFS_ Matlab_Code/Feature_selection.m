rng default
close all
clc;
%fprintf('\nFEATURE SELECTION TOOLBOX v 6.2 2018 - For Matlab \n');
% Include dependencies
addpath('C:\Users\kalug\AppData\Roaming\MathWorks\MATLAB Add-Ons\Toolboxes\Feature Selection Library\FSLib_v6.2.1_2018\lib'); % dependencies
addpath('C:\Users\kalug\AppData\Roaming\MathWorks\MATLAB Add-Ons\Toolboxes\Feature Selection Library\FSLib_v6.2.1_2018\methods'); % FS methods
addpath(genpath('C:\Users\kalug\AppData\Roaming\MathWorks\MATLAB Add-Ons\Toolboxes\Feature Selection Library\FSLib_v6.2.1_2018\lib\drtoolbox'));

% Select a feature selection method from the list
listFS = {'UDFS','llcfs','cfs'};

[ methodID ] = readInput( listFS );
selection_method = listFS{methodID}; % Selected

% Load the data and select features for classification

data = xlsread('D:\M.Eng\Applied Machine Learning\Project\Datasets\Datasets\Gear18.xlsx');
%data = rmmissing(data);
%data = rmoutliers(data); 

X = data(:,1:end-1);
%X=normalize(X);


Y = data(:,end);



% Randomly partitions observations into a training set and a test
d_split = 0.20;
P = cvpartition(Y,'Holdout',d_split);

X_train = double( X(P.training,:) );
Y_train = (double( Y(P.training) ));

X_test = double( X(P.test,:) );
Y_test = (double( Y(P.test)));

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
        ranking = llcfs( X_train );
        
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

T=table(ranking);
writetable(T,'ranking_udfs_gear1_1.xlsx')