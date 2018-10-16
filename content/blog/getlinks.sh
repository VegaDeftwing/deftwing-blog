pcregrep --only-matching=1 \  # Only display the match from group 1
  "\[.*?\](\[.*?\])" \          # Find [text][label] reference style links
  ./futureofwork.md | \      # Path to the markdown document
  sort