

class Channel < ApplicationRecord
  has_many :podcasts, dependent: :destroy
  has_many :hosts, through: :podcasts

end
