class AddPublishedToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :published, :boolean, default: false
  end
end
