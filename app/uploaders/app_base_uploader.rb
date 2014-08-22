class AppBaseUploader < CarrierWave::Uploader::Base
  #include CarrierWave::MiniMagick
  storage :file

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "app/#{model.class.to_s.underscore}"
  end

=begin
  def filename
    path = Digest::MD5.hexdigest(current_path)
    "#{Time.now.year}#{path}.#{file.extension.downcase}"
  end
=end

end