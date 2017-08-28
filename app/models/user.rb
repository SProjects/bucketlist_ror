class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bucketlists

  validates :first_name, presence: true
  validates :last_name, presence: true

  before_create -> { self.token = SecureRandom.hex }

  def name
    "#{first_name} #{last_name}"
  end
end
