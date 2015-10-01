require "./classes-2.rb"

c = Custodian.new
s = Student.new

print "custodian:", LockedRoom.enter(c), "\n"
print "student:", LockedRoom.enter(s), "\n"
