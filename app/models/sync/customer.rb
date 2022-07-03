# frozen_string_literal: true

module Sync
  class Customer
    include ::ActiveModel::Model

    attr_accessor :customer, :id
    attr_writer   :outsmart_customer

    def self.all
      @collection = []
      ::Customer.all.each do |c|
        @collection << Sync::Customer.new(c.id)
      end
      @collection
    end

    def self.synced_attributes
      {
        name: :name,
        email: :email,
        telephone: :phone_number,
        street: :street,
        number: :house_number,
        zipcode: :postal_code,
        city: :city
      }
    end

    def initialize(id)
      @id = id
      @customer = ::Customer.find(id)
    end

    def update(params)
      return true if @customer.update(params) # && outsmart_customer.update(params)

      false
    end

    def outsmart_customer
      @outsmart_customer ||= Outsmart::Client.new.customers.find @customer.outsmart_debtor_number
    end

    def linked?
      @customer.outsmart_debtor_number.present?
    end

    def synced?
      if linked?
        Sync::Customer.synced_attributes.each do |k, v|
          return false if @customer.send(k) != outsmart_customer[v]
        end
        return true
      end
      false
    end

    def name
      @customer.name
    end
  end
end
