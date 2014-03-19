# -*- encoding : utf-8 -*-
class CreateUserDatasheets < ActiveRecord::Migration
  def change
    create_table :user_datasheets do |t|
      t.string :phone,      :limit => 40
      t.string :mobile,     :limit => 40
      t.string :title,      :null => false
      t.date :birthdate
      t.string :firstname,  :limit => 40
      t.string :lastname,   :limit => 40
      t.string :nickname,   :null => false, :limit => 80  

      t.timestamps
    end
  end
end
