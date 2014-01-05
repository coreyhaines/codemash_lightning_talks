class Proposal < ActiveRecord::Base
  validates_presence_of :name, :email_address, :topic

  def self.this_years
    where("created_at > ?", DateTime.parse("2014/01/01"))
  end
end
