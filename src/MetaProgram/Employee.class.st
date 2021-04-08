Class {
	#name : #Employee,
	#superclass : #Object,
	#instVars : [
		'name',
		'salary'
	],
	#category : #MetaProgram
}

{ #category : #'reflective operations' }
Employee >> doesNotUnderstand: aMessage [ 
    | messageName | 
    messageName := aMessage selector asString. 
    (self class instVarNames includes: messageName) 
        ifTrue: [ 
            self class compile: messageName, String cr,'^', messageName. 
            ^aMessage sendTo: self ]. 
    ^super doesNotUnderstand: aMessage
]

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
