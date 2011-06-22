class Link < ActiveRecord::Base
  has_many :hits

  validates_presence_of :url
  validate :normalize_url

  def normalize_url
    begin
      nuri=URI.parse self.url
      nuri.normalize
      if ( nuri.to_s =~ /^(http|https):\/\// )
        self.url=nuri
      else
        self.url="http://"+nuri.to_s
      end
    rescue
      errors.add(:url, "seems to be wrong")
    end
  end
end
