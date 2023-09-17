class Post < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5, maximum:50 }
    # validates :body, presence: true, length: { minimum: 10, maximum:1000 }
    validates :body, presence: true
    belongs_to :user

    has_many :comments, dependent: :destroy

    has_one :content, class_name: 'ActionText::RichText', as: :record, dependent: :destroy
    has_rich_text :body


    has_noticed_notifications model_name: 'Notification'
    # has_many :notifications, through: :user, as: :recipient, dependent: :destroy
    has_many :notifications, through: :user, as: :recipient

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "title", "updated_at", "user_id", "views"]
        # ["body", "created_at", "id", "title", "updated_at", "user_id", "views"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["content", "comments", "notifications", "user"]
        # ["comments", "notifications", "user"]
    end
end
