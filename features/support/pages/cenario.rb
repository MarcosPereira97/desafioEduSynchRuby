class Login

  def initialize
    @login = Login.new
    @commands = Commands.new
  end

  def visita_site(site)
    @commands.acessa_site(site)
  end
end
