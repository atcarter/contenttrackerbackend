class AddTypeToContent < ActiveRecord::Migration[6.1]
  def change
    add_column :contents, :type, :string
  end
end
