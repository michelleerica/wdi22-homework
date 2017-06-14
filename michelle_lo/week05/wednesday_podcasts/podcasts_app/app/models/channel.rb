# == Schema Information
#
# Table name: channels
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  podcast_id :integer
#

class Channel < ApplicationRecord
  has_many :podcasts, dependent: :destroy

end
