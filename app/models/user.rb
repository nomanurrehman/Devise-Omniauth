class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise    :database_authenticatable, :registerable,
            :recoverable, :rememberable, :trackable, :validatable,
            :confirmable, :lockable, :timeoutable,
            :omniauthable, omniauth_providers: [:facebook, :github, :google_oauth2, :twitter]

  def self.create_from_facebook_data(facebook_data)
    where(provider: facebook_data.provider, uid: facebook_data.uid).first_or_create do | user |
      user.email = facebook_data.info.email
      user.password = Devise.friendly_token[0, 20]
      user.skip_confirmation!
    end
  end

  def self.create_from_github_data(github_data)
    where(provider: github_data.provider, uid: github_data.uid).first_or_create do | user |
      user.email = github_data.info.email
      user.password = Devise.friendly_token[0, 20]
      user.skip_confirmation!
    end
  end

  def self.create_from_google_data(google_data)
    where(provider: google_data.provider, uid: google_data.uid).first_or_create do | user |
      user.email = google_data.info.email
      user.password = Devise.friendly_token[0, 20]
      user.skip_confirmation!
    end
  end

  def self.create_from_twitter_data(twitter_data)
    where(provider: twitter_data.provider, uid: twitter_data.uid).first_or_create do | user |
      user.email = twitter_data.info.email
      user.password = Devise.friendly_token[0, 20]
      user.skip_confirmation!      
    end    
  end
end
