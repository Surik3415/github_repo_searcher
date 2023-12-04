# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

surik3415 = RepoOwner.create!(
  name: 'surik3415'
)

Repo.create!([
               { repo_owner: surik3415,
                 name: 'git_checker' },
               { repo_owner: surik3415,
                 name: 'cars_app' },
               { repo_owner: surik3415,
                 name: 'epam_music' }
             ])
