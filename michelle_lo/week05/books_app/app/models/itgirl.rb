# == Schema Information
#
# Table name: itgirls
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

class Itgirl < ApplicationRecord
  has_many :items, dependencies: :destroy
end
