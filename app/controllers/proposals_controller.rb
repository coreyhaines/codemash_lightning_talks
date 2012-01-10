class ProposalsController < ApplicationController
  def index
    @submitted_proposals = Proposal.all
    @new_proposal = Proposal.new
  end

  def create
    @new_proposal = Proposal.create params[:proposal]

    if @new_proposal.valid?
      redirect_to root_url
    else
      @submitted_proposals = Proposal.all
      render :index
    end
  end
end
