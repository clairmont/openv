class Ballot < ActiveRecord::Base

 def create_ballot
   @ballot = Ballot.create
 end

 def update_ballot(id)
   @ballot = Ballot.find(id)
   @ballot.save
 end
 
 def destroy_ballot(id)
  @ballot = Ballot.find(id)
  @ballot.save
 end
 
end
