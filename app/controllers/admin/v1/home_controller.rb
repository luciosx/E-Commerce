module Admin::V1 
    class HomeController < ApiController
        def index
            render json: { mensage: "Uhull!" }
        end
    end
end