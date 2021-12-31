class AddContentTypeToContent < ActiveRecord::Migration[6.1]
  def change
    add_column :contents, :content_type, :string
  end
end
