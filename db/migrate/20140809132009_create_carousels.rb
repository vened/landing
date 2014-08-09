class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
      t.string :title
      t.text :body
      t.string :images
      t.string :type

      t.timestamps
    end
  end
end
