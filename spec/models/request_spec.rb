require 'rails_helper'

RSpec.describe Request, type: :model do
  describe '#validations' do
    it 'should test that the factory is valid' do
      expect(build :request).to be_valid
    end

    it { should have_many :item }

    it { should belong_to :country }

    it { should belong_to :entity }

    it { should belong_to :business_unit }

    it { should belong_to :cost_center }

    it 'should validate the presence of the pr number' do
      request = build :request, number:''
      expect(request).not_to be_valid
    end
  
    it 'should validate the presence of reason_to_procure' do
      request = build :request, reason_to_procure:''
      expect(request).not_to be_valid
    end
  
    it 'should validate the presence of date_needed' do
      request = build :request, date_needed:''
      expect(request).not_to be_valid
    end
  
    it 'should validate the presence of grand_total' do
      request = build :request, grand_total:''
      expect(request).not_to be_valid
    end
  
    it 'should validate the presence of entity_id' do
      request = build :request, entity_id:nil
      expect(request).not_to be_valid
    end
  
    # it 'should validate the presence of business_unit_id' do
    #   request = build :request, business_unit_id:''
    #   expect(request).not_to be_valid
    # end
  
    # it 'should validate the presence of cost_center_id' do
    #   request = build :request, cost_center_id:''
    #   expect(request).not_to be_valid
    # end
  
    # it 'should validate the presence of country_id' do
    #   request = build :request, country_id:''
    #   expect(request).not_to be_valid
    # end
  end
end
