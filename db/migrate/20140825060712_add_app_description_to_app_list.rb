class AddAppDescriptionToAppList < ActiveRecord::Migration
  def change
    add_column :app_lists, :app_description, :string
  end
end
