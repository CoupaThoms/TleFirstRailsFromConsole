class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body #Pour obliger de remplir ces valeurs

  belongs_to :topic

  has_many :comments, dependent: :destroy

  def self.first_two_blogs
    limit(2)
  end

  def self.recent
    order("created_at DESC")
  end

end
