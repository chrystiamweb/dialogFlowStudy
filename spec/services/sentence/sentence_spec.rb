require_relative './../../spec_helper.rb'
 
describe SentenceModule::TranslateService do 
 
  describe '#call' do
    context 'portuguese to english' do
      it 'will translate' do
        sentence = 'Ola mundo'
        @translateService = SentenceModule::TranslateService.new({'sentence' => sentence})
        response = @translateService.call()
        expect(response).to match('Hello world')
      end
    end
  end
end