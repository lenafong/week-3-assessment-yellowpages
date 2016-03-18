require 'faker'
require_relative '../app/models/Contact'

  10.times do
    Contact.create :Name => Faker::Name.name,
                   :Phone  => Faker::PhoneNumber.cell_phone,
                   :Address => Faker::Address.street_address
                   # :Postcode => Faker::Address.postcode,
                   # :State => Faker::Address.state_abbr
  end
