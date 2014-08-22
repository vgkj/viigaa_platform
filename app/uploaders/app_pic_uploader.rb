# encoding: utf-8

class AppPicUploader < AppBaseUploader
  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
