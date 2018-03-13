class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :omniauthable, omniauth_providers: %i[linkedin]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # has_many :authorizations

  # attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :prodiver, :uid

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create(
        email: auth.info.email,
        password: Devise.friendly_token[0, 20],
        name: auth.info.name,
        image: auth.info.image,
        location: auth.info.location,
        industry: auth.info.industry
      )
  end
end
