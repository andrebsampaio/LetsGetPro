class Company < ActiveRecord::Base
  has_many :user

  def to_param
    "#{self.id}-#{self.name}"
  end
end
