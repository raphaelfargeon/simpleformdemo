# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: addresses
#
#  id                :integer          not null, primary key
#  street_number     :integer          not null
#  postal_code       :string(50)       not null
#  street            :string(255)      not null
#  city              :string(60)       not null
#  country           :string(80)       not null
#  area              :string(255)
#  other_information :text
#  building          :string(255)
#  company           :boolean          default(FALSE), not null
#  company_name      :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

class Address < ActiveRecord::Base
end
