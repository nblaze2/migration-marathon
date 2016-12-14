class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |table|
      table.string :title, null: false
      table.integer :year, null: false
    end
  end
end
