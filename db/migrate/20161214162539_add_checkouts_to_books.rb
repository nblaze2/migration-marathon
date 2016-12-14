class AddCheckoutsToBooks < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.belongs_to :book
      t.timestamps null: false
    end
  end
end
