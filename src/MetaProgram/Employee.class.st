Class {
	#name : #Employee,
	#superclass : #Object,
	#instVars : [
		'name',
		'salary'
	],
	#category : #MetaProgram
}

{ #category : #accessing }
Employee >> name [
	^name.
]

{ #category : #accessing }
Employee >> name: aName [
	name := aName.
]

{ #category : #accessing }
Employee >> salary [
	^salary.
]

{ #category : #accessing }
Employee >> salary: aSalary [
	salary := aSalary.
]
