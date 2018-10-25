module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Mon site portfolio"
    @seo_keywords = "Thomas Lefèvre portfolio keys for Google and so on"
  end
end