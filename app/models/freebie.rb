class Freebie < ActiveRecord::Base
    belongs_to :dev
    belongs_to :company

    def print_details
        dev_name = self.dev.name
        company_name = self.company.name
        "#{dev_name} owns a #{self.item_name} from #{company_name}"
    end
end
