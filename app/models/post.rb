# frozen_string_literal: true

# Post Model
class Post < ApplicationRecord
  validates_presence_of :title, :description
end
