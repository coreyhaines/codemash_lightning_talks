class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|

      t.timestamps
    end
  end
end
