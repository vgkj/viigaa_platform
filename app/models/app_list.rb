class AppList < ActiveRecord::Base
  mount_uploader :app_logo,AppLogoUploader
  mount_uploader :app_url,AppUrlUploader
  has_many :app_resouces,dependent: :destroy
  accepts_nested_attributes_for :app_resouces
end
