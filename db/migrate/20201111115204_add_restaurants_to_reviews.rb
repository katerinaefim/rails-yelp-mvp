# frozen_string_literal: true

class AddRestaurantsToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :restaurant_id, :integer
    add_foreign_key :reviews, :restaurants
  end
end
