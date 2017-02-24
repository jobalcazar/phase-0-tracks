classroom = {
  "drawers" => ["color pencils", "pens", " scissors"],
  "desks" => ["notebooks", "lined paper"],
  "computer" => ["documents", "program"],
  "shelves" => ["textbooks", "novels", "comics"],
  "containers" => ["tape", "posters", "rubber bands"]
}

#print what a key contains, notebooks and lined paper
puts classroom["desks"]

#access a specifc item within an array within a hash. specifcally printing posters
puts classroom["containers"][1]
