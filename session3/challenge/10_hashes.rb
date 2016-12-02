def pathify(paths_hash = {})
  # base step, creating the tree like structure
  # hash from array when path input is array
  return paths_hash.map { |path| '/' + path } if paths_hash.is_a? Array

  # recursive step
  # creating the new array to then return final answer
  new_array = []
  #will go through every key value pair of hash
  # changing parent paths to start with /
  paths_hash.each do |parent_path, child_dirs|
    parent_path = '/' + parent_path         # paths begin with a /
    # will change child paths by sending value to
    # pathify method
    child_paths = pathify (child_dirs)      # convert child directories to paths
    child_paths.each do |child_path|        # join each child path to it's parent path
      new_array << (parent_path + child_path)
    end
  end
  new_array
end
