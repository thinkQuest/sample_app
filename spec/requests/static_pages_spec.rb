require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Home'" do
      visit '/static_pages/home'
      page.should have_content('Home')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "The Home Page on Rails Application | Home")
    end    
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "The Help Page on Rails Application | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "About Us Page on Rails Application | About Us")
    end
  end
describe "Contacts Page" do
    it "should have the content 'Contacts'" do
  visit /static_pages/contact
  page.should have_content('Contacts')
    end
    it "should have the title 'Contacts'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                    :text => "Contacts Page on Rails Application | Contacts")
    end
  end
end