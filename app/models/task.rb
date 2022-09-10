class Task < ApplicationRecord
  belongs_to :category, required: false
  # belongs_to :user
  validates :name,
            presence: true,
            length: { minimum: 3, maximum: 50,
                      too_long: 'Too long! %{count} characters is the maximum allowed',
                      too_short: 'Too short! %{count} characters is the minimum allowed' }

  # validates_presence_of :name

end
