module Spree
  class Article < Spree::Base
    self.table_name = 'spree_articles'

    include SpreeGlobalize::Translatable
    translates :title, :text, :meta_title, :meta_description, :meta_keywords, fallbacks_for_empty_translations: true

    # extend FriendlyId
    # friendly_id :slug_candidates, use: %i[slugged finders]

    scope :published, -> { where(publish: true).where('published_at < ?', DateTime.now).includes(:translations) }

    def should_generate_new_friendly_id?
      new_record?
    end

    def normalize_friendly_id input
      input.to_slug.normalize(transliterations: :ukrainian).to_s
    end

    def next
      self.class.published.order(published_at: :asc).includes(:translations).find_by('published_at > ?', published_at)
    end

    def prev
      self.class.published.order(published_at: :desc).includes(:translations).find_by('published_at < ?', published_at)
    end
  end
end
