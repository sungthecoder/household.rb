require 'rails_helper'

RSpec.describe House, type: :model do
  it { is_expected.to respond_to :address }
  it { is_expected.to respond_to :address2 }
  it { is_expected.to respond_to :city }
  it { is_expected.to respond_to :state }
  it { is_expected.to respond_to :postal_code }

  it { is_expected.to have_many :people }
  it { is_expected.to have_many :cars }

  it { is_expected.to accept_nested_attributes_for :people }
  it { is_expected.to accept_nested_attributes_for :cars}
end
