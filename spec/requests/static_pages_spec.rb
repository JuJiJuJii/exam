# require 'spec_helper'

# describe "Static pages" do

#   describe "Home page" do
#     before { visit root_path }

#     it "should have the content 'Sample App'" do
#       expect(page).to have_content('Sample App')
#     end

#     it "should have the base title" do
      
#       expect(page).to have_title("Ruby on rails Tutorial Sample App")
#     end

#     it "should not have a custom page title" do
      
#       expect(page).not_to have_title('Home')
#     end
#   end

#   describe "Help page" do

#     it "should have the h1 'Help'" do
#       visit help_path
#       expect(page).to have_content('Help')
#     end

#     it "should have the title 'Help'" do
#       visit help_path
#       expect(page).to have_title("Ruby on rails Tutorial Sample App | Help")
#     end
#   end

#   describe "About page" do

#     it "should have the h1 'About Us'" do
#       visit about_path
#       expect(page).to have_content('About Us')
#     end

#     it "should have the title 'About Us'" do
#       visit about_path
#       expect(page).to have_title("Ruby on rails Tutorial Sample App | About Us")
#     end
#   end

#   describe "Contact page" do

#     it "should have the content 'Contact'" do
#       visit contact_path
#       expect(page).to have_content('Contact')
#     end

#     it "should have the title 'Contact'" do
#       visit contact_path
#       expect(page).to have_title("Ruby on rails Tutorial Sample App | Contact")
#     end
#   end
# end








require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title('Home') }
    it { should_not have_title("full_title") }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title('Help') }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title('About Us') }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title('Contact') }
  end
end

