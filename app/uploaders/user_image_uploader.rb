# encoding: utf-8

class UserImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
