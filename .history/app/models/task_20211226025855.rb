class Task < ApplicationRecord
    validates :name, presence: true, length: { maximum: 30 }
    validates :validate_name_not_including_comma
private

def validates_name_not_including_comma
    errors.add(:name, 'にカンマは含めません') if name&.include?(',')
end
end
