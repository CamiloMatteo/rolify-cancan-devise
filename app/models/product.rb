# frozen_string_literal: true

# Description Product Class
class Product < ApplicationRecord
  belongs_to :user
end
