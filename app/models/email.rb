class Email < ApplicationRecord

  validates :email, presence: true, length: { maximum: 100 }

end
