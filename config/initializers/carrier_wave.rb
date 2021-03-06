CarrierWave.configure do |config|
  if Rails.env.staging? || Rails.env.production?
    puts " Rails.env.staging? || Rails.env.production? || Rails.env.development?"
    config.storage    = :aws
    config.aws_bucket = ENV['AWS_BUCKET']
    config.aws_acl    = :'public-read'
    config.aws_authenticated_url_expiration = 60 * 60 * 24 * 365

    config.aws_credentials = {
      access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
      secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region:            ENV['AWS_REGION'] # Required
    }
  else # development, test
    config.storage = :file
    config.enable_processing = Rails.env.development?
  end

end