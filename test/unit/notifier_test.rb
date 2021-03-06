require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  
  should "send welcome email" do
    user = User.generate!
    Notifier.deliver_welcome_email(user)
    assert_sent_email do |email|
      email.subject == I18n.t('subject.welcome') &&
      email.from.include?(address_from('JetJauntAdmin <noreply@JetJaunt.com>')) &&
      email.to.include?(user.email) &&
      email.body =~ Regexp.new(user.login)
    end
  end

  should "send password reset instructions" do
    user = User.generate!
    Notifier.deliver_password_reset_instructions(user)
    assert_sent_email do |email|
      email.subject == I18n.t('subject.password_reset_instructions') &&
      email.from.include?(address_from('JetJauntAdmin <noreply@JetJaunt.com>')) &&
      email.to.include?(user.email) &&
      email.body =~ Regexp.new(user.perishable_token)
    end
  end

  
private
  def address_from(decorated_email_address)
    if decorated_email_address =~ /.*<(.+)>/
      Regexp.last_match[1]
    else
      decorated_email_address
    end
  end
end
