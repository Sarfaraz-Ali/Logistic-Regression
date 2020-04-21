function [costf theta]=logistic(x,y,theta,lambda)


%This function contains the principle algorithm which the machine learn the dataset


%Variables required

[m n]=size(x);



%Calculation the hypothesis

hyp=sigmoid(x*theta);



%Measuring the cost function->the function(variable) which measures the difference between the 
%prediction and the actual value

costf=(-(y'*log(hyp)+((1-y)'*log(1-hyp)))+(lambda*sum(theta.^2)))/m;



%Calculating Theta->the variable which contains the actual values of the machine learning

theta=(x'*(hyp-y))/m;



%Regularizing Theta . It is done when the algorithm  trains perfectly on the data 
%i.e overfits it. Since the actual world is imperfect ,perfect algorithms won't
%perform well .So the regularization reduces the performance of the algorithm 

theta(2:n)=theta(2:n)+((lambda/(2*m))*theta(2:n));


end
