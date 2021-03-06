# frozen_string_literal: true

# Posts Schema
class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
