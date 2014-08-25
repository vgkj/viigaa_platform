class AppResouce < ActiveRecord::Base
  mount_uploader :app_pic,AppPicUploader
  belongs_to :app_list
  validates :app_list_id,presence: true
  validates :app_pic,presence: true
end
