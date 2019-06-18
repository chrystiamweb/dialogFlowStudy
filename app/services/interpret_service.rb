class InterpretService
  def self.call action, params
    case action
    when "translate"
      SentenceModule::TranslateService.new(params).call()
    when "help"
      HelpService.call()
    else
      "Não compreendi o seu desejo"
    end
  end
end