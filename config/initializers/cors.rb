# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://github-repo-searcher.onrender.com/'
    resource(
      '*',
      headers: :any,
      credentials: true,
      methods: %i[get patch put delete post options show]
    )
  end
end
