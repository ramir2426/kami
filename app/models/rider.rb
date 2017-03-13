class Rider < ApplicationRecord
	# mount_uploader :cnic, :driving_license, :reg_copy, :cv, AvatarUploader
	enum gender: [:male, :female]
end
