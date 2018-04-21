class Url < ApplicationRecord
  validates :href, :url => true
  before_save :add_protocol 
  before_save :generate_shortened_href 

  def add_protocol
    unless self.href.include?('http://') || self.href.include?('https://')
      self.href.prepend('http://')
    end
  end

  def generate_shortened_href
    self.shortened_href = rand(36**8).to_s(36)
  end
end
