# encoding: utf-8

class AppUrlUploader < AppBaseUploader
  def extension_white_list
     %w(apk)
  end
end
