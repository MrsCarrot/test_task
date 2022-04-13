class Category < ApplicationRecord
    mount_uploader :image, ImageUploader
    # validates :title, :body
    
end

