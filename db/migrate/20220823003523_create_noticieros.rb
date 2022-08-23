class CreateNoticieros < ActiveRecord::Migration[7.0]
  def change
    create_table :noticieros do |t|
      t.string :title
      t.string :image
      t.string :content
      t.string :category

      t.timestamps
    end
  end
end
