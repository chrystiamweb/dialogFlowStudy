class HelpService
  def self.call
    response  = "*Meus comandos* \n\n"
    response += "help\n"
    response += "`Lista de comandos que eu conheço`\n\n"
    response += "Traduza \n"
    response += "`Traduz a palavra do inglês para portugês`\n\n"
    response += "Como se diz ... \n"
    response += "`Traduz a palavra do portugês para inglês`\n\n"
    response
  end
end