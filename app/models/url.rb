class Url < ApplicationRecord
  validates :href, :url => true
  # before_save :generate_shortened_href 

  def generate_shortened_href

  end
end
