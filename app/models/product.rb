class Product < ActiveRecord::Base
 #has_attached_file :image
  validates :title, :description, :image, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image, :format => { :with => %r{\.(gif|jpg|png)$}i,
                                 :message => "must be a URL for GIF, JPG or PNG image."}
  
	  has_attached_file :image, :styles => { :thumb=> "100x100",
						 :small=> "400x400" }
end
