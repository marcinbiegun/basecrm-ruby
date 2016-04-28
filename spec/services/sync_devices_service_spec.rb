require 'spec_helper'

describe BaseCRM::SyncDevicesService do
  describe 'Responds to' do
    subject { client.sync_devices  }

    it { should respond_to :all }
    it { should respond_to :create }
    it { should respond_to :find }
    it { should respond_to :update }
    it { should respond_to :upsert }
    it { should respond_to :where }
 
  end

  describe :all do
    it "returns a PaginatedResource" do
      expect(client.sync_devices.all()).to be_instance_of BaseCRM::PaginatedResource
    end
  end

  describe :where do
    it "returns an array" do
      expect(client.sync_devices.where(page: 1)).to be_an Array
    end
  end

  describe :create do
    it "returns instance of SyncDevice class" do
      @sync_device = build(:sync_device)
      expect(client.sync_devices.create(@sync_device)).to be_instance_of BaseCRM::SyncDevice
    end
  end

  describe :find do
    before :each do
      @sync_device = create(:sync_device) 
    end

    it "returns an instance of SyncDevice class" do
      expect(client.sync_devices.find(@sync_device.uuid)).to be_instance_of BaseCRM::SyncDevice
    end
  end

  describe :update do
    it "returns an updated instance of SyncDevice class" do
      @sync_device = create(:sync_device)
      expect(client.sync_devices.update(@sync_device)).to be_instance_of BaseCRM::SyncDevice
    end
  end

  describe :upsert do
    it "returns instance of SyncDevice class" do
      @sync_device = create(:sync_device)
      expect(client.sync_devices.upsert(@sync_device)).to be_instance_of BaseCRM::SyncDevice
    end
  end
end
