require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit '/staticpages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the base title" do
      visit '/staticpages/home'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/staticpages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/staticpages/help'
      page.should have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/staticpages/help'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/staticpages/about'
      page.should have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/staticpages/about'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact Us'" do
      visit '/staticpages/contact'
      page.should have_content('Contact Us')
    end

    it "should have the title 'Contact Us'" do
      visit '/staticpages/contact'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Contact Us")
    end
  end
end