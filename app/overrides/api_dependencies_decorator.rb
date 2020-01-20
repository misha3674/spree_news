module SpreeNews::Spree
  module ApiDependenciesDecorator
    # INJECTION_NEWS_POINTS = [
    #   :storefront_article_serializer,
    #   :storefront_articles_sorter,
    #   :storefront_articles_finder
    # ].freeze
    #
    # attr_accessor *INJECTION_NEWS_POINTS

    def storefront_article_serializer
      'Spree::V2::Storefront::ArticleSerializer'
    end

    # private
    #
    # def set_storefront_defaults
    #   puts "\n\n INJECTION_NEWS_POINTS set_storefront_defaults \n\n"
    #   @storefront_article_serializer = 'Spree::V2::Storefront::ArticleSerializer'
    #   # @storefront_articles_sorter = Spree::Dependencies.articles_sorter
    #   # @storefront_articles_finder = Spree::Dependencies.articles_finder
    #
    #   super
    # end
  end
end
::Spree::ApiDependencies.prepend SpreeNews::Spree::ApiDependenciesDecorator
