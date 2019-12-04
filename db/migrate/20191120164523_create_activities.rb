class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.string :venue_name
      t.string :venue_api_id
      t.float :lat
      t.float :lng
      t.string :address

      t.timestamps
    end
  end
end
