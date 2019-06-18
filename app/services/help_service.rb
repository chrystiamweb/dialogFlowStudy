class HelpService
  def self.call
    response  = "*Meus comandos* \n\n"
    response += "help\n"
    response += "`Lista de comandos que eu conheço`\n\n"
    response += "Traduza \n"
    response += "`Traduz a palavra para inglês`\n\n"
    response
  end
end