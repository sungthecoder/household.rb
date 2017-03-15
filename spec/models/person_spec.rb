require 'rails_helper'

RSpec.describe Person, type: :model do
  it { is_expected.to respond_to :first_name }
  it { is_expected.to respond_to :last_name }
  it { is_expected.to respond_to :email }
  it { is_expected.to respond_to :age }
  it { is_expected.to respond_to :gender }
  it { is_expected.to belong_to  :house }
  it { is_expected.to have_many  :cars }
end
