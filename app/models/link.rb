class Link < ActiveRecord::Base

  belongs_to :user
  
  validates :title, :url, :presence => true
  validates_format_of :url, :with => URI::regexp(%w(http 'https)), :message => "is not valid. Try: http://%{value}"
  auto_strip_attributes :url

end
