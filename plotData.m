function plotData(X, y)


%This function plots the data in the dataset .It plots the positive and the negative 
%examples distinguishable


%starting the plot

figure; hold on;



%classifing the positive and negative examples

p=find(y==1);
n=find(y==0);



%Plotting the positive examples with the '+' sign and the negative examples
%with a '-' sign 

plot(X(p,1),X(p,2),'k+');
plot(X(n,1),X(n,2),'ko');



%labels for user to understand 

xlabel('Exam1');
ylabel('Exam2');
title('Admissions');
legend('Pass','Fail');


%stopping the plot

hold off;


end
