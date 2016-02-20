class Message < ActiveRecord::Base

  validates :content,
    presence: true, length: { maximum: 140 }

  validates :author,
    presence: true, length: { maximum: 25 }

  validates :url,
    format: { with: /(https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&\/\/=]*)|\A\Z|)/ } 

end