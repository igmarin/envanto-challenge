# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'home/index.html.erb', type: :view do
  describe 'home view' do
    it 'welcome message' do
      render
      expect(rendered).to match(/Welcome/)
    end
  end
end
