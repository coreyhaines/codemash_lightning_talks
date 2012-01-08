class ProposalsController < ApplicationController
  def index
    @proposal = Proposal.new
  end

  def create
    Proposal.create params[:proposal]
    redirect_to proposals_url
  end
end
