class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.belongs_to :wiki

      t.timestamps
    end
    add_index :articles, :wiki_id
  end
end
