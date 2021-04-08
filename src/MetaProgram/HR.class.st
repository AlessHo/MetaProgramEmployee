Class {
	#name : #HR,
	#superclass : #Employee,
	#instVars : [
		'notes'
	],
	#category : #MetaProgram
}

{ #category : #accessing }
HR >> notes [
	^notes.
]

{ #category : #accessing }
HR >> paySalaries [
	notes := 'Salaries paid !'
]
