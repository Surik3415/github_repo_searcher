# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RequestsController do
  describe 'GET #new' do
    it 'renders the new template' do
      get :new
      expect(response).to render_template(:new)
    end

    it 'returns a successful response' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
end
