require 'spec_helper'

feature 'Customer' do
  scenario 'should be able to create customer', :js => true do
    visit '/customers'                   ; page.driver.render '/tmp/1-visit.png', :full => true
    click_link 'New Customer'            ; page.driver.render '/tmp/2-click.png', :full => true
    fill_in 'Name', :with => 'Alice'     ; page.driver.render '/tmp/3-fill.png', :full => true
    click_button 'Create'                ; page.driver.render '/tmp/4-create.png', :full => true
  end
end
