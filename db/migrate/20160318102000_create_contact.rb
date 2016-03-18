require_relative '../application'

# this is where you should use an ActiveRecord migration to

class CreateContact < ActiveRecord::Migration
  def change
  	 create_table(:contacts, primary_key:'list') do |t|
      t.string :Name
      t.string :Phone
      t.string :Address

      t.timestamps
    end
  end
end