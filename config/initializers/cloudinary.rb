Cloudinary.config do |config|
  config.cloud_name = 'dbkyw5q9q'
  config.api_key = ENV["SAM_CLOUDINARY_API_KEY"]
  config.api_secret = ENV["SAM_CLOUDINARY_API_SECRET"]
  config.cdn_subdomain = true
  config.secure = true
end
