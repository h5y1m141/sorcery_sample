require 'spec_helper'

describe WelcomeController do
  describe "Index page" do
    it "has the content 'Home#index'" do
      visit '/'
      title_text = page.find('h1').text
      expect(title_text).to eq ('Welcome#index')
    end
  end
end
