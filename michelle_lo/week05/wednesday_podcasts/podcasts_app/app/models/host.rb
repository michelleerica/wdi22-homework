class Host < ApplicationRecord
  has_and_belongs_to_many :podcasts
  has_many :channels, through: :podcasts

end
