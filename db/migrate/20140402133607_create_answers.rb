# -*- encoding : utf-8 -*-
class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :reponse
	  t.integer :id_answer, :null => false
      t.timestamps
    end
  end
end
