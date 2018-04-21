require 'rails_helper'

RSpec.describe UrlsController, type: :controller do

  describe "POST #create" do
    context "with valid attributes" do 
      let!(:url) {Url.create(href:'www.google.com') }
      it "creates a new URL" do
        expect { post :create, params: { url: { href: url.href} } }.to change(Url, :count).by(1)
      end
      
      it "redirects to show after a URL is created" do
        post :create, params: { url: { href: url.href} }
        expect(response).to redirect_to(Url.last)
      end
    end

    context "with invalid attributes" do 
      let!(:url) {Url.create(href:'google') }

      it "renders new" do
        post :create, params: { url: { href: url.href} }
        expect(response).to render_template(:new)
      end
    end
  end

  describe "GET #show" do
    let(:url) {Url.create(href:'www.google.com') }
    it "renders show" do
      get :show, params: { id: url.id }
       expect(response).to render_template(:show)
    end

    it "assigns the correct url to @url" do
      get :show, params: { id: url.id }
      expect(assigns(:url)).to eq(url)
    end
  end

end
