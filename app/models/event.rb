class Event < ActiveRecord::Base
  before_create :build_tokens

  def build_tokens
    self.admin_token = "foo"
  end
end
