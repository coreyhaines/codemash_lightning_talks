class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :name
      t.string :email_address
      t.string :twitter_handle
      t.text :topic

      t.timestamps
    end
  end
end
