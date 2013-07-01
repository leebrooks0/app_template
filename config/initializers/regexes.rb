module Regexes
  # http://davidcel.is/blog/2012/09/06/stop-validating-email-addresses-with-regex/
  EMAIL = /.+@.+\..+/i

  # http://joshuawood.net/validating-url-in-ruby-on-rails-3/
  STRICT_URL = /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
  RELAXED_URL = /(^$)|(^[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
end