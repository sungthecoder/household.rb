require 'rails_helper'

RSpec.describe Car, type: :model do
  it { is_expected.to respond_to :year }
  it { is_expected.to respond_to :make_id }
  it { is_expected.to respond_to :make_display }
  it { is_expected.to respond_to :model }
  it { is_expected.to respond_to :license_plate }
  it { is_expected.to belong_to  :house }
  it { is_expected.to belong_to  :driver }

  it { is_expected.to respond_to :driver_id }
end
