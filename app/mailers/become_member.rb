class BecomeMember < ActionMailer::Base
  default from: "info@teaterfred.dk"
  
  def test
    @url = '/become_member'
    mail(:to => 'info@teaterfred.dk', :subject => "Ansøgning om medlemsskab")
  end
  
end
