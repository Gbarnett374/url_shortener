require 'pry'
class Url < ApplicationRecord
  validates :href, :url => true
  before_save :generate_shortened_href 

  def generate_shortened_href
    self.shortened_href = rand(36**8).to_s(36)
  end
end
