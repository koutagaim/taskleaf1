class Task < ApplicationRecord
    validates :name, presence: true, length: { maximum: 30 }
private

def validates_name_not_including_comma
    errors.add(:name, '‚ÉƒJƒ“ƒ}‚ÍŠÜ‚ß‚Ü‚¹‚ñ') if name&.include?(',')
end
end
