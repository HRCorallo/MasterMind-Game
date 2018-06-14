+ def print_row(row) 
+  guess = row[:guess]
+  print "|#{guess[0]}|#{guess[1]}|#{guess[2]}|#{guess[3]}|      |\n"
+end
+
+def print_board(board)
+  print "---------------\n"
+  board[:rows].each do |row|
+    print_row(row)
+  end
+  print "-----------\n"
+  solution = board[:solution]
+  print "|#{solution[0]}|#{solution[1]}|#{solution[2]}|#{solution[3]}|\n"
+  print "-----------\n"
+end
+
+board = {
+  rows: [
+    { guess: ["R", "R", "R", "R"], feedback: [nil, nil, nil, nil] },
+    { guess: ["Y", "P", "P", "P"], feedback: ["B", "W", nil, nil] },
+    { guess: ["P", "Y", "G", "B"], feedback: ["B", "B", "W", nil] },
+    { guess: [nil, nil, nil, nil], feedback: [nil, nil, nil, nil] },
+    { guess: [nil, nil, nil, nil], feedback: [nil, nil, nil, nil] },
+    { guess: [nil, nil, nil, nil], feedback: [nil, nil, nil, nil] },
+    { guess: [nil, nil, nil, nil], feedback: [nil, nil, nil, nil] },
+    { guess: [nil, nil, nil, nil], feedback: [nil, nil, nil, nil] },
+    { guess: [nil, nil, nil, nil], feedback: [nil, nil, nil, nil] },
+    { guess: [nil, nil, nil, nil], feedback: [nil, nil, nil, nil] },
+  ],
+  solution: ["P", "B", "G", "P"]
+}
+print_board(board)
+
+board.print
+
+# >> ---------------
+# >> |R|R|R|R|      |
+# >> |Y|P|P|P|      |
+# >> |P|Y|G|B|      |
+# >> |||||      |
+# >> |||||      |
+# >> |||||      |
+# >> |||||      |
+# >> |||||      |
+# >> |||||      |
+# >> |||||      |
+# >> -----------
+# >> |P|B|G|P|
+# >> ----------- 

