module Spree::Api::V2
  module Storefront
    class ArticlesController < ::Spree::Api::V2::BaseController
      include Spree::Api::V2::CollectionOptionsHelpers

      def index
        render_serialized_payload { serialize_collection(paginated_collection) }
      end

      def show
        render_serialized_payload { serialize_resource(resource) }
      end

      private

      def sorted_collection
        # collection_sorter.new(collection, params).call
        collection
      end

      def collection
        # collection_finder.new(scope, params).execute
        scope
      end

      def resource
        scope.find(params[:id])
      end

      # def collection_sorter
      #   Spree::Api::Dependencies.storefront_articles_sorter.constantize
      # end
      #
      # def collection_finder
      #   Spree::Api::Dependencies.storefront_articles_finder.constantize
      # end

      def collection_serializer
        # Spree::Api::Dependencies.storefront_article_serializer.constantize
        Spree::V2::Storefront::ArticleSerializer
      end

      def resource_serializer
        # Spree::Api::Dependencies.storefront_article_serializer.constantize
        Spree::V2::Storefront::ArticleSerializer
      end

      def scope
        # Spree::Product.accessible_by(current_ability, :show).includes(scope_includes)
        Spree::Article.all
      end
      #
      # def scope_includes
      #   {
      #     # master: :default_price,
      #     # variants: [],
      #     # variant_images: [],
      #     # taxons: [],
      #     # product_properties: :property,
      #     # option_types: :option_values,
      #     # variants_including_master: %i[default_price option_values]
      #   }
      # end
    end
  end
end
