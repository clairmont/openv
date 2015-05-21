class BallotController < ApplicationController
  def new
    @ballot = Ballot.new
    redirect_to new_ballot_path(@ballot)
  end

  def show
   @ballot = Ballot.find_by(id: params[:id])
   if @ballot.nil?
     redirect_to action: :index
   end
  end

  def edit
    @ballot = Ballot.find(params[:id])
    @ballot.save
  end
  
  def index
    @ballots = Ballot.all
  end
end
