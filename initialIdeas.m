%network relations

users=1:100;
rating=.01:.01:1;
similarities=.01:.01:1;
group=1:100;
group
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
    for j=1:100
        test(i,j)=willSayYes(users(i),users(j), rating, similarities, ratingWeight, similaritiesWeight);
        if (test(i))
            group(i)=group(j);
        else 
            totgroups=totgroups+1; 
            group(i)=0;
        end
        
    end
end
sum(test)