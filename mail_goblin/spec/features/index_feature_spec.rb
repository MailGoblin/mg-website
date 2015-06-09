require 'rails_helper'

feature 'index page' do
  context 'nothing is added' do
    scenario 'should display a note' do
      visit '/index'
      expect(page).to have_content 'Nothing has been added'
    end
  end

  context 'content has been added' do
    scenario 'display content' do
      visit '/'
      expect(page).to have_link 'Homepage'
    end
  end
end