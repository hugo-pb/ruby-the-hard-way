# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require './candidates'

def find(id)
 for candidate in @candidates do
  if candidate[:id] == id 
    return candidate
  end
 end 

end

def experienced?(candidate)
 
  if candidate[:years_of_experience] > 2
    true
  else
    false 
  end
end

def qualified_candidates(candidates)
  q = []
 for candidate in candidates do
   if (experienced?(candidate) && candidate[:github_points] > 100 && candidate[:languages].include?('Ruby' || 'Python') && 
    candidate[:date_applied] > 15.days.ago.to_date  && candidate[:age] > 17 )
q.push candidate
   end
  end 
  return q
end

# More methods will go below

def ordered_by_qualifications(candidates)

return candidates.sort_by {|candidate| [-candidate[:years_of_experience], -candidate[:github_points]] }

end