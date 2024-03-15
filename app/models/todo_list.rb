class TodoList < ApplicationRecord
    validates :title, presence: true
    attribute :is_success, :boolean, default: false
end
