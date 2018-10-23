class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.wrc
    where(title: 'Dernier Portfolio WRC')
  end

  scope :specific_portfolio_items, -> { where(title: 'Portfolio title: 7') }
end
