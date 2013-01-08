class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :admin_token

      t.timestamps
    end
  end
end
