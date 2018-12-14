as yet unclassified
displayAttention

	| text |
	text := self sourceCode text asText.
	AttentionHighlighter new highlight: text withAttention: nameAnalyserModel currentMethodAttention.
	sourceCode text: text.
	