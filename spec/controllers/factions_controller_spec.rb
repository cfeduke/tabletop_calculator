require 'spec_helper'

describe FactionsController do
  include Devise::TestHelpers
  render_views
  
  describe "GET 'show'" do
    it "should be successful" do
      pending
      #get 'show/blah'
      #response.should be_success
    end
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

end
