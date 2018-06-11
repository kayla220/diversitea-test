module ChargeBee
  class Plan < Model

  attr_accessor :id, :name, :invoice_name, :description, :price, :currency_code, :period, :period_unit,
  :trial_period, :trial_period_unit, :charge_model, :free_quantity, :setup_cost, :downgrade_penalty,
  :status, :archived_at, :billing_cycles, :redirect_url, :enabled_in_hosted_pages, :enabled_in_portal,
  :tax_code, :sku, :accounting_code, :accounting_category1, :accounting_category2, :resource_version,
  :updated_at, :invoice_notes, :taxable, :tax_profile_id, :meta_data

  # OPERATIONS
  #-----------

  def self.create(params, env=nil, headers={})
    Request.send('post', uri_path("plans"), params, env, headers)
  end

  def self.update(id, params={}, env=nil, headers={})
    Request.send('post', uri_path("plans",id.to_s), params, env, headers)
  end

  def self.list(params={}, env=nil, headers={})
    Request.send_list_request('get', uri_path("plans"), params, env, headers)
  end

  def self.retrieve(id, env=nil, headers={})
    Request.send('get', uri_path("plans",id.to_s), {}, env, headers)
  end

  def self.delete(id, env=nil, headers={})
    Request.send('post', uri_path("plans",id.to_s,"delete"), {}, env, headers)
  end

  def self.copy(params, env=nil, headers={})
    Request.send('post', uri_path("plans","copy"), params, env, headers)
  end

  def self.unarchive(id, env=nil, headers={})
    Request.send('post', uri_path("plans",id.to_s,"unarchive"), {}, env, headers)
  end

  end # ~Plan
end # ~ChargeBee