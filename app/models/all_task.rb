class AllTask < ApplicationRecord

    def self.search(search)
        where("lower(alltask.task_title) LIKE :search ", search: "%#{search.downcase}%").uniq
    end
end
