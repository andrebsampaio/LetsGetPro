class User < ActiveRecord::Base
  has_many :news     # Um user pode ter publicado várias noticias
  belongs_to :company
end
