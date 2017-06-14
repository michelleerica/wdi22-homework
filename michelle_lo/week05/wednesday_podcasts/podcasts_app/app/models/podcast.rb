
class Podcast < ApplicationRecord
  belongs_to :channel, optional: true
  has_and_belongs_to_many :hosts
  has_and_belongs_to_many :guests



end
