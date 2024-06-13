class Post < ApplicationRecord
  # Validation de l'image
  # validate :image_attached_and_valid

  has_one_attached :image
  acts_as_punchable
  has_one_attached :video
  belongs_to :user

  has_many :likes
  # private

  #  def image_attached_and_valid
  #  if image.attached?
  ##   if image.blob.byte_size > 200.megabytes
   #     errors.add(:image, 'size must be less than 200MB')
   #   elsif image.blob.metadata[:width] && image.blob.metadata[:height]
   #     if image.blob.metadata[:width] > 330 || image.blob.metadata[:height] > 206
   #       errors.add(:image, 'dimensions must be at most 330x206 pixels')
   #     end
   #   else
   #     errors.add(:image, 'dimensions metadata missing')
   #   end
   # else
   #   errors.add(:image, 'must be attached')
   # end
#  end
end
