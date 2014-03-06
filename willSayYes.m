function [response]= willSayYes(user1index,user2index)
 response= ceil(rand-abs(rating(user1index)-rating(user2index))/100)  ;  

end