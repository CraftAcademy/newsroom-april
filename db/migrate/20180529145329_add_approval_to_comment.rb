class AddApprovalToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :approval, :boolean, default: false
  end
end
