function  [f1 prec recall acc] = performanceAnalysis(x,y,theta)


%This function analyzes the performance of the algorithm on the provided dataset


%variables required

m=size(x,1);
p=sigmoid(x*theta);
hyp=zeros(m,1);



%Calculating the hypothesis

for i=1:m,
if p(i)>=0.5,
hyp(i)=1;
else,
hyp(i)=0;
end
end



%Calculating true positives ,false positives and false negatives
tp=sum((hyp==1)&(y==1));
fp=sum((hyp==1)&(y==0));
fn=sum((hyp==0)&(y==1));



%Calculating the accuracy ,precision ,recall and F1

acc=mean(hyp==y)*100;

prec=tp*100/(tp+fp);

recall=tp*100/(tp+fn);

f1=(2*prec*recall)/(prec+recall);


end
