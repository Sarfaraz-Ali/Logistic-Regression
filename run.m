function run()


%These functions combine to be a binary logistic/sigmoid regression which classify 
%data into two different segments 


clc;


%Presentation for the user

fprintf('\n ---Good Evening---\n\n\n---I am your assistant who will help you to classify binary data with the help of machine learning---\n\n\n');
fprintf('---Currently I possess two datasets --- \n\n\n ---Which dataset you want me to learn?---\n\n\n');


q=input('---Enter 1 or 2 for first or second dataset respectively--> ');


if q==1,
solve1();


elseif q==2,
solve2();


else ,
fprintf('\n\nLooks like you have entered an invalid input \n\n Would to like to start me up again?\n\n');
w=input('Enter 1 or 2 for a Yes or a No respectively-> ');

if w==1,
run();

elseif w==2,
fprintf('\n\n---Have a great day---\n\n');

else ,
fprintf('\n\n---I would suggest you to visit a psycologist immediately---\n\n');

end

end

end






