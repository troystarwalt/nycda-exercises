class Person; end
class Student < Person; end
class Prefect < Student; end
class Faculty < Person; end
class Teacher < Faculty; end
class Principal < Faculty; end
class Dean < Faculty; end
class Admin < Person; end
class Custodian < Admin; end
class LunchLady < Admin; end
class Pedestrian < Person; end

class LockedRoom
	# Only Custodians, Faculty, and the Prefect can enter this room
	# true if p can enter
	# false if they cannot
	def self.enter(p)
		if p.class == Custodian ||
		   p.class <= Faculty ||
		   p.class == Prefect
		   true
		else
			false
		end
    end
end

class LunchRoom
	# Everybody but the Pedestrian can enter this room.
	def self.enter(p)

	end
end

class PrincipalsOffice
	# Principal and Custodian can enter
	def self.enter(p)

	end
end

class ClassRoom
	# Student, Faculty, Custodian can enter the classroom
	def self.enter(p)
	end
end

# Pedestrian

# Faculty
# -> Teacher
#       -> Dean
# -> Principal

# Admin
# -> Custodian
# -> Lunchperson
# -> AdmissionsOfficer
# -> GuidanceCounselor

# Student
# -> Prefect
# -> TeachersPet
# -> ClassClown
# -> Bully
# -> GradeA
# -> Slacker
# -> Jock
# -> Nerd
#     -> MathNerd
#     -> CompSciNerd
