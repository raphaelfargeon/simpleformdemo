# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  question   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Question < ActiveRecord::Base
	has_many :answer
end
