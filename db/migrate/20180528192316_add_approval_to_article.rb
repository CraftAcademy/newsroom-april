class AddApprovalToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :approval, :boolean, default: false
  end
end
