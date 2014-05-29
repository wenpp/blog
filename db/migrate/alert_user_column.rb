class AlertUserColumn < ActiveRecord::Migration
  def change
    rename_column :users, :login, :user
    end
  end
end