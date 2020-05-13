class Product < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :reviews, dependent: :destroy
  has_many :cart_products

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: %w(Flower Edible Seed),
    message:  "Choose one valid category!" }
  validates :description, presence: true, length: { maximum: 500 }
  validates :price, presence: true
  validates :quantity, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_category_description,
    against: [ :name, :category, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
