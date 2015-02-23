Rails.application.routes.draw do
  class FormatTest
    attr_accessor :mime_type

    def initialize(format)
      @mime_type = Mime::Type.lookup_by_extension(format)
    end

    def matches?(request)
      request.format == mime_type
    end
  end

  root 'static#index'

  namespace :api do
    namespace :v1 do
      resources :people, only: [:index, :show], constraint: FormatTest.new(:json)
    end
  end

  get '/*path' => 'static#index', constraints: FormatTest.new(:html)
end
