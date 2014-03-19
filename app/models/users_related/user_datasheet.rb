# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: user_datasheets
#
#  id         :integer          not null, primary key
#  phone      :string(40)
#  mobile     :string(40)
#  title      :string(255)      not null
#  birthdate  :date
#  firstname  :string(40)
#  lastname   :string(40)
#  nickname   :string(80)       not null
#  created_at :datetime
#  updated_at :datetime
#

class UserDatasheet < ActiveRecord::Base
end
