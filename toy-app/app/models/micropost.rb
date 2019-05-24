class Micropost < ApplicationRecord
    belongs_to :user
    validade :content, length: { maximum: 140 },
        presence: true
end
