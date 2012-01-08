class ProposalsController < ApplicationController
  def index
    @submitted_proposals = Proposal.all
    @new_proposal = Proposal.new
  end

  def create
    Proposal.create params[:proposal]
    redirect_to proposals_url
  end
end
