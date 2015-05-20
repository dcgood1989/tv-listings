class CreateShowListings < ActiveRecord::Migration
  def change
    create_table :show_listings do |t|
      t.date :date
      t.belongs_to :show
      t.belongs_to :channel

      t.timestamps null: false
    end
  end
end
