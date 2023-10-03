class WelcomeController < ApplicationController
    # GET /notices or /notices.json
    def index
      @notices = Notice.all
    end
end
