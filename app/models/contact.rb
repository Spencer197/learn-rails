class Contact#Gives the model name: Contact
  include ActiveModel::Model#Mix in behaviour from the ActiveModel class
  attr_accessor :name, :string#Create attributes(data fiels) for the model.
  attr_accessor :email, :string#Specifies each attribute as a string.
  attr_accessor :content, :string #The attributes match the fields in the contact form.

  validates_presence_of :name#ActiveModel gives validation methods.
  validates_presence_of :email
  validates_presence_of :content
  validates_format_of :email,
    with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i#We provide a regex (regular expression) to test email address validity.
  validates_length_of :content, :maximum => 500#We declare that the message may not exceed 500 characters.

end
