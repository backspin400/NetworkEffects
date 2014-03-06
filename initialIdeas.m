%network relations

users=1:100;
rating=.01:.01:1;
similarities=zeros(1,100);
ratingWeight=1;
similaritiesWeight=1;
for i=1:100
similarities(i)=rand;
end
test=zeros(1,100);
similarities(50)=.50;
similarities(80)=.80;
for i=1:100
test(i)=willSayYes(50,80, rating, similarities, ratingWeight, similaritiesWeight);
end
sum(test)