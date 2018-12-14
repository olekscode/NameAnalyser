visiting
visitAssignmentNode: anAssignement
	tokens
		add: anAssignement variable name asString;
		add: ':='.
	anAssignement value acceptVisitor: self