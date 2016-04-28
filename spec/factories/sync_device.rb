FactoryGirl.define do
  factory :sync_device, class: BaseCRM::SyncDevice do



    to_create do |sync_device|
      client.sync_devices.create(sync_device)
    end
  end
end
