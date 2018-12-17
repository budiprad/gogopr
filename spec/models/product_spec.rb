require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'should test that the factory is valid' do
    expect(build :product).to be_valid
  end
end
