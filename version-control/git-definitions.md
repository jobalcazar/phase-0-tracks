# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
	Version control is a system that saves changes made to a file. It is useful because it allows the user to make desired changes without affecting the master branch once a branch is made.
* What is a branch and why would you use one?
	A branch is a copy of the code currently in use. It allows the user to make a change that they may not want implemented on the master branch.
* What is a commit? What makes a good commit message?
	A commit is a point within a branch that suggests there was a change. This is typically read on a file with the help of a commit message. A commit message is the message a user inputs with any changes/branching so that someone reading the branch can read the purpose for the modification.
* What is a merge conflict?
<<<<<<< HEAD
	A merge conflict occurs when two branches, the one the user is currently working on with the parent branch or a specifically listed one. Typically occurs when in the incorrect branch or when merging two branches that do not share the same master branch.
=======
	A merge conflict occurs when two branches, the one the user is currently working on with the parent branch or a specifically listed one cannot be merged.
>>>>>>> master
