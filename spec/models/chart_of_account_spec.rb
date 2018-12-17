require 'rails_helper'

RSpec.describe ChartOfAccount, type: :model do
  it 'should test that the factory is valid' do
    expect(build :chart_of_account).to be_valid
  end
end
