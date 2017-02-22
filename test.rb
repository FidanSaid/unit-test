
require 'rubygems'
require 'net/ldap'
require 'test/unit'
class TC_MyTest < Test::Unit::TestCase

 def setup
 ldap = Net::LDAP.new
 ldap.host = "ldap.forumsys.com"
 ldap.port = 389
 ldap.auth "cn=read-only-admin,dc=example,dc=com", "password"


 
  if ldap.bind 
   # authentication succeeded
   puts "success"
  else
   # authentication failed
   puts "failure"
  end
 end

 def test_fail
    assert(false, 'Assertion was false.')
 end 
end