function solve2()


%This is the function which executes all the necessary operations for the algorithm to learn 
%the second dataset 


%loading the data from the dataset into a variable

h=load('ex2data2.txt');



%variable assignment

x=h(:,1:2);
y=h(:,3);
m=size(x,1);



%feature mapping

x=featMap(x(:,1),x(:,2));



%plotting data

plotData(x(:,[2,3]),y);



%functional requirements 

initial_theta=zeros(size(x,2),1);
options=optimset('GradObj','on','MaxIter',400);
lambda=1;



%functional execution

[theta costf exit_flag]=fminunc(@(t)(logistic(x,y,t,lambda)),initial_theta,options);



%projection of learnt algorithm on the dataset

plotDecisionBoundary(theta,x,y);



%analysing the performance of algorithm on the dataset

[f1 prec rec acc]=performanceAnalysis(x,y,theta);



%displaying analysis

fprintf('\n\n\n---These are the results of the performance of algorithm working on the learnt dataset---\n\n\n');

fprintf('F1-> %f \n', f1);
fprintf('Precision-> %f \n',prec );
fprintf('Recall-> %f \n',rec );
fprintf('Accuracy-> %f \n',acc );



end
