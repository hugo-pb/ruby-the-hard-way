# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

# p experienced?@candidates[0]


# res = find(7)
# pp res

# qa = qualified_candidates(@candidates)
# pp qa

res = ordered_by_qualifications(@candidates)
pp res