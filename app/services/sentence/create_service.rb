module SentenceModule
  class TranslateService
    include HTTParty
    def initialize(params)
      puts params
      @sentence = ''
      @lang = ''
      set_lang(params)
      @apikey = 'trnsl.1.1.20190618T140151Z.86043cc92b92b6be.e922fe465d1f644377f6f45d900cf5f1fd3b0cf0'
    end 
    
    def call
      base_uri = "https://translate.yandex.net/api/v1.5/tr.json/translate?"
      result = self.class.get("#{base_uri}key=#{@apikey}&text='#{@sentence}'&lang=#{@lang}")
      result['text'][0]    
    end

    def set_lang(request)
      if request['sentence'].empty?     
        @sentence = request['language']
        @lang = 'pt-en' 
      else
        @sentence = request['sentence']
        @lang = 'en-pt'
      end
    end
  end
end