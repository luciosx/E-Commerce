module  Authenticable
    extend ActiveSupport::Concern

    included do
        include DeviseTokenAuth::Concerns::SetUserByToken
        before_action :authenticate_user! #sempre que alguem chamar esse controller vai ser forçado a autenticar o usuario
    end
end