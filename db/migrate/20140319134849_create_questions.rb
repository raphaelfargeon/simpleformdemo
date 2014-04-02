# -*- encoding : utf-8 -*-
class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question, :null => false, :limit => 60
	  t.integer :id, :null => false
      t.timestamps
    end
  end
end
