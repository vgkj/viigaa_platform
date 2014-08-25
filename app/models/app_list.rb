class AppList < ActiveRecord::Base
  mount_uploader :app_logo,AppLogoUploader
  mount_uploader :app_url,AppUrlUploader
  has_many :app_resouces,dependent: :destroy,inverse_of: :app_list
  accepts_nested_attributes_for :app_resouces

  #数据验证
  validates :app_title,presence: true,uniqueness: {message:"已存在该名称了"}
  validates :app_version,presence: true
  validates :app_credit,presence: true,numericality: {greater_than_or_equal_to:0,message:"必须是数字"}
  validates :app_count,presence: true,numericality: {greater_than_or_equal_to:0,message:"必须是数字"}
  validates :app_size,presence: true,numericality: {greater_than_or_equal_to:0,message:"必须是数字"}
  validates :app_description,presence: true,length: {minimum: 100,message:"必须大于或等于100个字符"}
  validates :app_url,presence: true
  validates :app_logo,presence: true
  #validates :app_resouces,presence: true
  validates_associated :app_resouces
end
