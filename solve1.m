function solve1()


%This is the function which executes all the necessary operations for the algorithm to learn 
%the first dataset 


%loading the data from the dataset into a variable

h=load('ex2data1.txt');



%variable assignment

x=h(:,1:2);
y=h(:,3);
m=size(x,1);
x=[ones(m,1) x];



%creating test sets

t=int8(m*0.9);
x_test=x(t+1:m,:);
y_test=y(t+1:m,:);
x=x(1:t,:);
y=y(1:t,:);



%plotting data

plotData(x(:,[2,3]),y);



%functional requirements 

lambda=0;
initial_theta=zeros(size(x,2),1);
options=optimset('GradObj','on','MaxIter',400);



%functional execution

[theta costf exit_flag]=fminunc(@(t)(logistic(x,y,t,lambda)),initial_theta,options);



%projection of learnt algorithm on the dataset

plotDecisionBoundary(theta,x,y);



%analysing the performance of algorithm on the dataset

[f1 prec rec acc]=performanceAnalysis(x,y,theta);



%displaying analysis

fprintf('\n\n\n---These are the results of the performance of algorithm working on the learnt dataset---\n\n\n');

fprintf('---F1-> %f \n', f1);
fprintf('---Precision-> %f \n',prec );
fprintf('---Recall-> %f \n',rec );
fprintf('---Accuracy-> %f \n',acc );



%analysing the performance of algorithm on test dataset results

[f1 prec rec acc]=performanceAnalysis(x_test,y_test,theta);



%displaying analysis

fprintf('\n\n\n---These are the results of the performance of algorithm working on the testing dataset---\n\n\n');

fprintf('---F1-> %f \n', f1);
fprintf('---Precision-> %f \n',prec );
fprintf('---Recall-> %f \n',rec );
fprintf('---Accuracy-> %f \n',acc );


end
