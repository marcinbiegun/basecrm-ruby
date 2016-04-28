# WARNING: This code is auto-generated from the BaseCRM API Discovery JSON Schema

module BaseCRM
  class SyncDevicesService
    OPTS_KEYS_TO_PERSIST = Set[:resource_types, :uuid]

    def initialize(client)
      @client = client
    end

    # Retrieve all sync devices
    # 
    # get '/sync/devices'
    #
    # If you want to use filtering or sorting (see #where).
    # @return [Enumerable] Paginated resource you can use to iterate over all the resources. 
    def all
      PaginatedResource.new(self)
    end

    # Retrieve all sync devices
    # 
    # get '/sync/devices'
    #
    # Retrieve all sync devices created by the user you use to authenticate
    #
    # @param options [Hash] Search options
    # @option options [Integer] :page (1) The page number to start from. Page numbering is 1-based and omitting the `page` parameter will return the first page.
    # @option options [Integer] :per_page (25) The number of records to return per page. Default limit is *25* and maximum number that can be returned is *100*.
    # @option options [String] :sort_by (id:asc) A field to sort by. You can sort by filterable custom fields as well, e.g. to filter by external id use `?sort_by=custom_fields:external_id`. **Default** ordering is **ascending**. If you want to change the sort order to descending, append `:desc` to the field e.g. `sort_by=last_name:desc`.
    # @return [Array<SyncDevice>] The list of SyncDevices for the first page, unless otherwise specified. 
    def where(options = {})
      _, _, root = @client.get("/sync/devices", options)

      root[:items].map{ |item| SyncDevice.new(item[:data]) }
    end
    

    # Create a sync device
    # 
    # post '/sync/devices'
    #
    # Create new sync device
    #
    # @param sync_device [SyncDevice, Hash] Either object of the SyncDevice type or Hash. This object's attributes describe the object to be created. 
    # @return [SyncDevice] The resulting object represting created resource. 
    def create(sync_device)
      validate_type!(sync_device)

      attributes = sanitize(sync_device)
      _, _, root = @client.post("/sync/devices", attributes)

      SyncDevice.new(root[:data])
    end
    

    # Retrieve a single sync device
    # 
    # get '/sync/devices/{uuid}'
    #
    # Retrieve a single sync device
    #
    # @param uuid [Integer] Unique identifier of a Uuid
    # @return [SyncDevice] Searched resource object. 
    def find(uuid)
      _, _, root = @client.get("/sync/devices/#{uuid}")

      SyncDevice.new(root[:data])
    end
    

    # Update a sync device
    # 
    # put '/sync/devices/{uuid}'
    #
    # Update existing sync device
    #
    # @param sync_device [SyncDevice, Hash] Either object of the SyncDevice type or Hash. This object's attributes describe the object to be updated. 
    # @return [SyncDevice] The resulting object represting updated resource. 
    def update(sync_device)
      validate_type!(sync_device)
      params = extract_params!(sync_device, :uuid)
      uuid = params[:uuid]

      attributes = sanitize(sync_device)
      _, _, root = @client.put("/sync/devices/#{uuid}", attributes)

      SyncDevice.new(root[:data])
    end
    

    # Upsert a sync device
    #
    # post '/sync/devices/upsert'
    #
    # Update or create a sync device
    #
    # @param sync_device [SyncDevice, Hash] Either object of the SyncDevice type or Hash. This object's attributes describe the object to be created.
    # @return [SyncDevice] The resulting object represting created resource.
    def upsert(sync_device)
      validate_type!(sync_device)

      attributes = sanitize(sync_device)
      _, _, root = @client.post("/sync/devices/upsert", attributes)

      SyncDevice.new(root[:data])
    end

    

  private
    def validate_type!(sync_device)
      raise TypeError unless sync_device.is_a?(SyncDevice) || sync_device.is_a?(Hash)
    end

    def extract_params!(sync_device, *args)
      params = sync_device.to_h.select{ |k, _| args.include?(k) }
      raise ArgumentError, "one of required attributes is missing. Expected: #{args.join(',')}" if params.count != args.length
      params
    end
       
    def sanitize(sync_device)
      sync_device.to_h.select { |k, _| OPTS_KEYS_TO_PERSIST.include?(k) }
    end
  end
end
