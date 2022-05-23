class Todo < ApplicationRecord

    validates :title, presence: true

    scope :read, -> { where(read: false) }
    scope :executed, -> { where(executed: false) }
    scope :archived, -> { where(archived: false) }
end
