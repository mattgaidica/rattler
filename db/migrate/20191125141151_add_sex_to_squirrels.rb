class AddSexToSquirrels < ActiveRecord::Migration[6.0]
  def change
  	add_column :squirrels, :sex, :string
  end
end
