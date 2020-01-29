Deface::Override.new(
  virtual_path: 'spree/admin/shared/_main_menu',
  name: 'add_news_to_admin_nav',
  insert_bottom: 'nav',
  partial: 'spree/admin/shared/nav_articles'
)