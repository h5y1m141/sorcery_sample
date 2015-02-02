require 'spec_helper'

describe ApiController do
  describe "user" do
    before do
      @user =  build(:user)
    end

    it "shoudl be return user.id" do
      expect(@user.id).to eq 3
    end
  end
end
