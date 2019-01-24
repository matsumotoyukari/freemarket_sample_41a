class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:omniauthable,:omniauth_providers => [:facebook,:google_oauth2]
  validates :name, presence: true
  has_many :products, foreign_key: :seller
  has_one :address,dependent: :destroy
  accepts_nested_attributes_for :address
  has_many :trades
  has_many :purchase_products,through: :trades, source: :product
  has_many :likes,dependent: :destroy
  has_many :liked_products, through: :likes, source: :product
  has_many :comments
  has_many :buyer_rates, class_name: "Rate", foreign_key: :buyer_id
  has_many :seller_rates,class_name: "Rate", foreign_key: :seller_id


  mount_uploader :image, ImageUploader

  def already_liked?(product)
    likes.exists?(product_id: product.id)
  end

  def good_rate_count
    self.buyer_rates.where(buyer_rate: 1).count + self.seller_rates.where(seller_rate: 1).count
  end

  def nomal_rate_count
    self.buyer_rates.where(buyer_rate: 2).count + self.seller_rates.where(seller_rate: 2).count
  end

  def bad_rate_count
    self.buyer_rates.where(buyer_rate: 3).count + self.seller_rates.where(seller_rate: 3).count
  end

  def self.from_omniauth(auth)
    user = User.find_by(email: auth.info.email)
    if user
      return user
    else
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        # userモデルが持っているカラムをそれぞれ定義していく
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.name = auth.info.name
        user.uid = auth.uid
        user.provider = auth.provider
      end
    end
  end

end
