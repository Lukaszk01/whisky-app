require_relative "../views/Emploees_view"
require_relative "../models/Emploee"

class SeassionsController
  def initialize(Emploee_repository)
    @Emploee_repository = Emploee_repository
    @Emploees_view = EmploeesView.new
  end
    def login()
        
    end
end