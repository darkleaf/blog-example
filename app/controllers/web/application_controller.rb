class Web::ApplicationController < ApplicationController
  self.responder = ApplicationResponder
  respond_to :html
end
