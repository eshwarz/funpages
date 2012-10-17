class User < ActiveRecord::Base

	after_create :set_default_associations

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  # validations
  validates :first_name, :last_name, :presence => true
  # validates_presence_of :first_name, :last_name


  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name

  has_many :posts, :dependent => :destroy
  has_one :profile, :dependent => :destroy

  def set_default_associations
  	self.create_profile
  end

  def full_name
		self.first_name + ' ' + self.last_name
  end

end
