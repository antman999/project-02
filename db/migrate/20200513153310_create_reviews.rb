class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :critic_id
      t.integer :movie_id
      t.string  :rating
    end

  end
end
