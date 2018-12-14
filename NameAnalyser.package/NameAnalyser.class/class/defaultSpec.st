specs
defaultSpec

	^ SpecLayout composed 
		newRow: [ :mainRow |
			mainRow
				newColumn: [ :leftColumn |
					leftColumn
						newRow: #nameListLabel height: self labelHeight;
						newRow: #nameList. ]
				width: 200;
				newColumn: [ :rightColumn |
					rightColumn
						newRow: [ :topRow |
							topRow
								newColumn: [ :subLeftColumn |
									subLeftColumn
										newRow: #selectedMethodLabel height: self labelHeight;
										newRow: #nameEdit height: self inputTextHeight;
										newRow: #sourceCode. ];
								newColumn: [ : subRightColumn |
									subRightColumn
										newRow: #proposedNamesListLabel height: self labelHeight;
										newRow: #proposedNamesList. ]
								width: 200. ];
						newRow: [ :bottomRow |
							bottomRow
								newColumn: #undoButton width: self buttonWidth;
								newColumn: #applyButton width: self buttonWidth. ]
						height: self buttonHeight. ]. ];
		yourself.