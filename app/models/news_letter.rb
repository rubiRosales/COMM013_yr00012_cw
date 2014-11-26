class NewsLetter < ActiveRecord::Base
  mount_uploader :newsletter, NewsLetterUploader
end
