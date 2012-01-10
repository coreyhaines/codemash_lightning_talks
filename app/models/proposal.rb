class Proposal < ActiveRecord::Base
  validates_presence_of :name, :email_address, :topic
end
