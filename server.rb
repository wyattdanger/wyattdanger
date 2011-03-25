%w(rubygems sinatra haml).each{|lib| require lib}
module GoGoGo
  def self.new
    return App.new
  end
  class App < Sinatra::Base
    set :root, File.dirname(__FILE__)
    set :public, File.dirname(__FILE__) + '/public'
    set :views, File.dirname(__FILE__) + '/views'
    set :app_file, __FILE__
    set :static, true

    helpers do
      def p_(page)
        haml ('_'+page.to_s).intern, :layout => false
      end
    end

    get '/' do
      haml :home
    end

    get '/*' do
      haml :home
    end



  end # ppA
end #yesaerC
