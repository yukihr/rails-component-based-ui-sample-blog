class CreateArticlesTags < ActiveRecord::Migration
  def change
    create_table :articles_tags do |t|
      t.references :article, null: false, index: true
      t.references :tag, null: false, index: true

      t.timestamps
    end

    add_index(:articles_tags, [:article_id, :tag_id], unique: true)
  end
end
