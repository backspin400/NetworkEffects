    %network relations

users(1:20)=10;
users(21:40)=30;
users(41:60)=50;
users(61:80)=70;
users(81:100)=90;
rating=users/100;
similarities=rating;
group=1:100;

ratingWeight=1;
similaritiesWeight=1;
totgroups=100;

% for i=1:100
% similarities(i)=rand;
% end
test=zeros(1,100);
similarities(50)=.50;
similarities(80)=.80;

for i=1:100
   
        test(i)=willSayYes(users(i),users(50), rating, similarities, ratingWeight, similaritiesWeight);
        if (test(i,j))
            group(j)=ceil((group(i)+group(50))/2);
            group(i)=group(j);
        else 
            
            group(i)=0;
        end
        
end
sum(test)