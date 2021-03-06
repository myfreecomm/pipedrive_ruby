# Activities are appointments/tasks/events on a calendar that can be associated with a Deal, a Person and an Organization.
# Activities can be of different type (such as call, meeting, lunch or a custom type - see ActivityTypes object) and can be assigned to a particular User.
# Note that activities can also be created without a specific date/time.
module PipedriveRuby
  # Available calls (all, find, create, update, remove, remove_many)
  class Activities < PipedriveRuby::Base
    def_delegators :endpoints, :all, :find, :create, :update, :remove, :remove_many
  end
end
