

class Host < ApplicationRecord
  has_and_belongs_to_many :podcasts

end