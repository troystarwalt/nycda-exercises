require "./classes-2.rb"

pe = Person.new
c = Custodian.new
s = Student.new
f = Faculty.new
p = Prefect.new
t = Teacher.new
pr = Principal.new
d = Dean.new

print "custodian:", LockedRoom.enter(c), "\n"
print "person:", LockedRoom.enter(pe), "\n"
print "student:", LockedRoom.enter(s), "\n"
print "faculty:", LockedRoom.enter(f), "\n"
print "prefect:", LockedRoom.enter(p), "\n"
print "teacher:", LockedRoom.enter(t), "\n"
print "principal:", LockedRoom.enter(pr), "\n"
print "dean:", LockedRoom.enter(d), "\n"

