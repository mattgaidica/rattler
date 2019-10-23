class AddApiKeyToProjects < ActiveRecord::Migration[6.0]
  def change
  	add_column :projects, :api_key, :string
  end
end
