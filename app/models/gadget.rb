class Gadget
  require 'aws-sdk'

  def self.get_gadget(params)
    lambda = Aws::Lambda::Client.new(
      region: 'us-east-2',
      access_key_id: 'AKIAJMKQ7T476EOTMLJA',
      secret_access_key: '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'
    )  
    resp = lambda.invoke({function_name: 'createGadget', payload: {name: "name", upwork_name: "test", email: "user@yopmaili.com", message: "test message"}.to_json  })
    resp.payload.string
  end
  
end