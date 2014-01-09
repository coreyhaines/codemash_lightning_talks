class ProposalsController < ApplicationController
  def index
    @submitted_proposals = Proposal.this_years
    @new_proposal = Proposal.new
  end

  def create
    head(:unauthorized) and return
    @new_proposal = Proposal.create params[:proposal]

    if @new_proposal.valid?
      redirect_to root_url
    else
      @submitted_proposals = Proposal.this_years
      render :index
    end
  end
end
