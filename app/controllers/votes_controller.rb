class VotesController < ApplicationController
	def new
		@vote = Vote.new
		@nicks = Vote.where(candidate: 1).count
		@maggies = Vote.where(candidate: 2).count
	end
	
	def create
		@vote = Vote.new(vote_params)
    @vote.ip = request.remote_ip
  
    respond_to do |format|
      if @vote.save

      	@nicks = Vote.where(candidate: 1).count
				@maggies = Vote.where(candidate: 2).count

      
        #format.html #{ redirect_to @invite, notice: 'Invite was successfully created.' }
        format.js #{ render location: @nicks,@maggies }
      else
        #format.html { render :new }
        format.js #{ render json: @invite.errors, status: :unprocessable_entity }
      end
    end
	end

	def show

	end

	private
		def vote_params
      params.require(:vote).permit(:candidate)
    end
end
