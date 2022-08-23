class AddNullFalseToNoticieroField < ActiveRecord::Migration[7.0]
  def change
    change_column_null :noticieros, :title, false
    change_column_null :noticieros, :image, false
    change_column_null :noticieros, :content, false
    change_column_null :noticieros, :category, false
  end
end
