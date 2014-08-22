class AppResouce < ActiveRecord::Base
  mount_uploader :app_pic,AppPicUploader
  belongs_to :app_list
end
