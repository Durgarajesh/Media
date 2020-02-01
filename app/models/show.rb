class Show < ApplicationRecord
    belongs_to :channel

    def self.search(s_params)
        where("lower(channels.name) LIKE :search OR lower(shows.name) LIKE :search", search: "%#{s_params.downcase}%").order("shows.name DESC").uniq
    end
end
