require 'uri'

class Article < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :url, presence: true, format: /#{URI::regexp}/
  validates :title, presence: true
end
