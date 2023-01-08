# String
# Integer
# Array
# Boolean
# Hash, Dictionnary

# flow control: iterations

# conditionals

5.times.each do |i|
    # puts "toto #{i}"
  end
  
  # variables
  
  # functions
  
  # read csv
  
  require 'csv'
  
  data = CSV.read('notes.csv', headers: true)
  
  # notes = {"math"=> [],...}
  notes = {}
  
  data.each do |row|
    course = row['course']
    note = row['note']
    if notes[course].nil?
      notes[course] = []
      notes[course] << note
    else
      notes[course] << note
    end
  end
  
  p notes
  
  def average(notes)
    # avg = { 'math' => 0, 'french' => 0, 'english' => 0 }
    avg = {}
    notes.each do |course, course_notes|
      sum_course_notes = 0
      course_notes.each do |note|
        sum_course_notes += note.to_i
      end
  
      # if avg[course] == nil
      avg[course] = sum_course_notes.to_f / course_notes.size
      # end
    end
    p avg
  end
  
  average(notes)
  
  # p "french: #{average(notes_french)}"
  # p "math: #{average(notes_math)}"
  # p "english: #{average(notes_english)}"
  