require 'thinking_sphinx'
require 'action_controller/dispatcher'

# With Rails 2.1, you may need to uncomment this if your indexed models use STI, but
# otherwise you risk breakage, e.g if you have observers watching an indexed model.
# See http://groups.google.com/group/thinking-sphinx/browse_thread/thread/9f29b59f6175f50f

# if Rails::VERSION::STRING.to_f < 2.1
#   ThinkingSphinx::Configuration.instance.load_models
# end

ActionController::Dispatcher.to_prepare :thinking_sphinx do
  ThinkingSphinx::Configuration.instance.load_models
end