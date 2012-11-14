class Profile < ActiveRecord::Base  
  STRING_FIELDS = %w(first_name last_name)
  VALID_GENDERS = ["Male", "Female"]
  VALID_DATES = DateTime.new(START_YEAR)..DateTime.now
  
  validates_length_of STRING_FIELDS, :maximum => DB_STRING_MAX_LENGTH  
  validates_inclusion_of  :gender,
                          :in => VALID_GENDERS,
                          :allow_nil => true,
                          :message =>'must be male or female'
  
  validates_inclusion_of  :birdhdate,
                          :in => VALID_DATES,
                          :allow_nil => true,
                          :message =>'is invalid'  
  
  
  belongs_to :user
end