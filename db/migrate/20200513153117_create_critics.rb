class CreateCritics < ActiveRecord::Migration[5.2]
  def change
    create_table :critics do |t|
      t.string :name
      t.string :rotten_tomatoe_ranking
    end
  end
end
