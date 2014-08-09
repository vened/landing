class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title
      t.string :body
      t.string :image

      t.timestamps
    end
  end
end
