require 'rails_helper'

RSpec.describe Item, type: :model do
  it 'should test that the factory is valid' do
    expect(build :item).to be_valid
  end

  it { should belong_to :product }

  it { should belong_to :chart_of_account }

  it { should belong_to :request }

  it { should validate_presence_of :item_name }

  it { should validate_presence_of :product_id }

  it { should validate_presence_of :chart_of_account_id }

  it { should validate_presence_of :request_id }

  it { should validate_presence_of :unit }

  it { should validate_presence_of :total }

  it { should validate_presence_of :vat }

  it { should validate_presence_of :est_unit_price }

  it { should validate_presence_of :est_total_price }

end
