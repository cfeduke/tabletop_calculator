require 'spec_helper'

describe FactionsController do
  render_views
  
  describe "GET 'show'" do
    before { get :show, :name => 'german' }
    subject { response }
    it { response.status.should == 200 }
    it { should render_template(:show) }
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

end
