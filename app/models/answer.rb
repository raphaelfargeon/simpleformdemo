# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: answers
#
#  id         :integer          not null, primary key
#  reponse    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Answer < ActiveRecord::Base
	belongs_to :question
end
