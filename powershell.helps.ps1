
# Make some R Source Code that will be able to have file names for text files to read.  
# Note, the 26 is actually something that would have to be replaced unless, like me,
# another reader is using 26 characters for the base of the git repostiory path.
# This command would be executed from within the directory that the data files live in.
# It assumes that the working directory for R is at the root of the git repository.
gci | % { $_.FullName } | % { $_.Substring(26) -replace "\\", "/" -replace "^", "'" -replace "$", "'" -replace "^", "FileName = "}  | clip