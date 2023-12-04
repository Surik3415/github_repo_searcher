# frozen_string_literal: true

module Queries
  class RepoOwnerQueries < GraphQL::Schema::Object
    field :repo_owner, Types::UserType, null: true do
      argument :login, String, required: true
    end

    field :repos, [Types::RepoType], null: true do
      argument :login, String, required: true
    end

    def user(login:)
      # Реалізуйте логіку для отримання даних про користувача з GitHub API
      # Використовуйте faraday для виконання HTTP-запиту
    end

    def repos(login:)
      # Реалізуйте логіку для отримання даних про репозиторії з GitHub API
      # Використовуйте faraday для виконання HTTP-запиту
    end
  end
end
