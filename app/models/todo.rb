class Todo < ApplicationRecord

    validates :title, presence: true

    enum status: [:read, :executed, :archived], _suffix: true
    #enum status: { read: 0, executed: 1, archived: 2 }
end
