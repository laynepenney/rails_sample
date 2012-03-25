require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit '/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the base title" do
    	visit '/home'
    	page.should have_selector('title', 
    			:text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do

  	it "should have the h1 'Help'" do
  		visit '/help'
  		page.should have_selector('h1', :text => "Help")
  	end

    it "should have the right title" do
    	visit '/help'
    	page.should have_selector('title', 
    			:text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About Page" do

  	it "should have the h1 'About Us'" do
  		visit '/about'
  		page.should have_selector('h1', :text => "About Us")
  	end

    it "should have the right title" do
    	visit '/about'
    	page.should have_selector('title', 
    			:text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end

end
