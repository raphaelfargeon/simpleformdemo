# -*- encoding : utf-8 -*-
class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :street_number, :null => false
      t.string :postal_code,    :null => false, :limit => 50
      t.string :street,         :null => false
      t.string :city,           :null => false, :limit => 60
      t.string :country,        :null => false, :limit => 80
      t.string :area
      t.text :other_information
      t.string :building
      t.boolean :company,       :null => false, :default => false
      t.string :company_name

      t.timestamps
    end
  end
end
