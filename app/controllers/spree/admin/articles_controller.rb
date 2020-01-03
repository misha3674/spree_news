module Spree::Admin
  class ArticlesController < BaseController
    def index
      @articles = Spree::Article.all
    end
  end
end