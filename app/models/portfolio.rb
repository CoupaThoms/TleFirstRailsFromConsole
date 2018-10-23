class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.wrc
    where(title: 'Dernier Portfolio WRC')
  end

  scope :specific_portfolio_items, -> { where(title: 'Portfolio title: 7') }


  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://placehold.it/600x400"
    self.thumb_image ||= "http://placehold.it/350x200"
  end

end
