CarrierWave.configure do |config|
    config.storage = :azure_rm
	config.azure_storage_account_name = ENV["STORAGE_ACCOUNT_NAME"]
	config.azure_storage_access_key = ENV["STORAGE_ACCESS_KEY"]
	config.azure_container = ENV["STORAGE_CONTAINER"]
end