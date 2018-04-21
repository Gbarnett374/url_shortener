require 'rails_helper'

RSpec.describe Url, type: :model do
  describe 'After a url is saved' do
    let(:url) { Url.create(href: 'www.google.com') }

    it 'an 8 character short href was generated ' do
      expect(url.shortened_href.length).to eq(8)
    end

    it 'the short href was created using the full href' do
      shortened_href = Digest::SHA1.hexdigest(url.href)[1..8]
      expect(url.shortened_href).to eq(shortened_href)
    end

    it 'the http protocol was added to the url if was is missing' do
      expect(url.href.include?('http://')).to be(true)
    end
  end

  describe 'When validating a url' do
    it 'does not allow invalid urls to be saved' do
      url = Url.new(href: 'google')
      expect(url).to_not be_valid
    end
  end
end
