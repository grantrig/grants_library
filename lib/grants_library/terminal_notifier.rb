require 'shellwords'

module GrantsLibrary
  class TerminalNotifier
    def self.notify(*args, **options)
      shell_options = []
      shell_options << 'terminal-notifier'
      shell_options += get_sound_option(args, options)
      shell_options += get_message(args, options)
      `#{Shellwords.join(shell_options)}`
    end

    def self.get_sound_option(args, options)
      return ['-sound', options[:sound]] if options.key?(:sound)
      return ['-sound', 'default'] if args.delete(:sound)
      []
    end

    private_class_method :get_sound_option

    def self.get_message(args, options)
      return ['-message', options[:message]] if options.key? :message
      return ['-message', args.first.to_str] if args.first.respond_to? :to_str
      []
    end

    private_class_method :get_message
  end
end
