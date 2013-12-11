class User < ActiveRecord::Base
  has_many :posts
  has_one :curriculum
  has_many :jobshistory, through: :curriculum
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user
  before_save { self.email = email.downcase }
  before_create :create_remember_token
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
            format:     { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }
  after_create :create_default_curriculum



  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def to_param
    "#{self.id}-#{self.name}"
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end

  def create_default_curriculum
    self.create_curriculum
  end

end