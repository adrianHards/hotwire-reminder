class Task < ApplicationRecord
  # belongs_to :category
  # belongs_to :user
  validates :name,
            presence: true,
            length: { minimum: 5, maximum: 50,
                      too_long: 'Too long! %{count} characters is the maximum allowed',
                      too_short: 'Too short! %{count} characters is the minimum allowed' }
end
