function [result] = featMap(x1,x2)


%This function performs the operation Feature Mapping on the dataset when the features
%in the dataset are not enough for the algorithm to learn . It generates new features 
%for the data 


%variables required

d=6;
result=ones(length(x1),1);


%Mapping of new features

for i=1:d,

for j=0:i,

result(:,end+1)=((x1.^(i-j)).*(x2.^j));

end

end 

end










