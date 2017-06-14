# == Schema Information
#
# Table name: items
#
#  id            :integer          not null, primary key
#  name          :string
#  type          :string
#  popularity    :string
#  accessibility :string
#  string        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Item < ApplicationRecord
  belongs_to :itgirl, optional: true
end
