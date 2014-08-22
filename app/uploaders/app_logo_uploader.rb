# encoding: utf-8

class AppLogoUploader < AppBaseUploader
  def extension_white_list
     %w(jpg jpeg png)
  end
end
