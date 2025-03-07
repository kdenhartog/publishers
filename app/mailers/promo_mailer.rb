# typed: false
class PromoMailer < ApplicationMailer
  include PromosHelper
  helper PromosHelper
  layout "promo_mailer"

  def activate_promo_2018q1(publisher)
    @publisher = publisher
    promo_token = publisher.promo_token_2018q1
    @private_promo_2018q1_auth_url = promo_registrations_url(promo_token: promo_token)

    mail(
      to: @publisher.email,
      subject: default_i18n_subject
    )
  end

  def promo_activated_2018q1_verified(publisher, promo_enabled_channels)
    @promo_enabled_channels = promo_enabled_channels
    @publisher = publisher

    publisher.promo_token_2018q1
    mail(
      to: @publisher.email,
      subject: default_i18n_subject
    )
  end

  def new_channel_registered_2018q1(publisher, channel)
    @publisher = publisher
    @channel = channel

    mail(
      to: @publisher.email,
      subject: default_i18n_subject(publication_title: @channel.details.publication_title)
    )
  end
end
