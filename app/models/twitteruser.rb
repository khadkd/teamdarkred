class Twitteruser < ApplicationRecord
    def self.create_with_omniauth(auth)
        Twitteruser.create!(
            :provider =>auth["provider"],
            :uid => auth["uid"],
            :name => auth["info"]["name"])
    end
end
