class ProposalsController < ApplicationController
  def index
    @proposal = Proposal.new
  end
end
