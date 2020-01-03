class AddTranslationsToArticle < SpreeExtension::Migration
  def up
    params = { title: :string, text: :text }
    Spree::Article.create_translation_table!(params, { migrate_data: true })
  end

  def down
    Spree::Article.drop_translation_table! migrate_data: true
  end
end
