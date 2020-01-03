class AddTranslationMetaToArticle < SpreeExtension::Migration
  def change
    reversible do |dir|
      dir.up do
        params = { meta_title: :string, meta_description: :string, meta_keywords:  :string }
        Spree::Article.add_translation_fields! params
      end

      dir.down do
        remove_column :spree_articles_translations, :meta_title, :meta_description, :meta_keywords
      end
    end
  end
end
