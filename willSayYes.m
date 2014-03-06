function [response]= willSayYes(user1index,user2index, rating, similarities, ratingWeight, similaritiesWeight)
weight=ratingWeight + similaritiesWeight;
 response= ceil(rand-(ratingWeight * abs(rating(user1index)-rating(user2index))/weight + ...
    similaritiesWeight* abs(similarities(user1index)-similarities(user2index))/weight))  ;  
end