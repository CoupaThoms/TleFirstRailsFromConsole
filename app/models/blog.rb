class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body #Pour obliger de remplir ces valeurs

  belongs_to :topic ,optional:true

  def self.first_two_blogs
    limit(2)
  end

end
