# DealFields represent the near-complete schema for a Deal in the context of the company of the authorized user.
# Each company can have a different schema for their Deals, with various custom fields. In the context of using DealFiels as a schema for defining the data fields of a Deal, it must be kept in mind that some types of custom fields can have additional data fields which are not separate DealFields per se.
# Such is the case with monetary, daterange and timerange fields – each of these fields will have one additional data field in addition to the one presented in the context of DealFields.
# For example, if there is a monetary field with the key 'ffk9s9' stored on the account, 'ffk9s9' would hold the numeric value of the field, and 'ffk9s9_currency' would hold the ISO currency code that goes along with the numeric value.
# To find out which data fields are available, fetch one Deal and list its keys.
module PipedriveRuby
  class DealFields < PipedriveRuby::Base
    def_delegators :endpoints, :all, :find, :create, :update, :remove, :remove_many
  end
end
