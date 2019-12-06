class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  default_scope -> { order('id DESC') }

  before_save :should_generate_new_friendly_id?, if: :title_changed?

  validates :username, presence: true, length: { maximum: 255 }
  validates :keycode, presence: true, length: { maximum: 255 }
  validates :title, presence: true, length: { maximum: 255 }
  validates :image, presence: true, length: { maximum: 255 }
  validates :content, presence: true, length: { maximum: 65536 }

  before_save :security
   
  private

    def security
      unless self.username == "aheil4250" && self.keycode == "BBhh19!!"
        redirect_to root_url
      end
    end

    def should_generate_new_friendly_id?
      title_changed?
    end

end
