class AllTask < ApplicationRecord

    def self.search(search)
        where("lower(alltask.task_title) LIKE :search ", search: "%#{search.downcase}%").uniq
    end

    #Validation when posting data to database
    validates :task_title, presence: true 
    #validates :task_due_date, presence: true
end
