# == Schema Information
#
# Table name: it_girls
#
#  id          :integer          not null, primary key
#  name        :string
#  dob         :date
#  nationality :string
#  period      :string
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ItGirl < ApplicationRecord
end
