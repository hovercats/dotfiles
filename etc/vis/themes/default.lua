-- Use terminal colors for vis
-- Personal theme

local lexers = vis.lexers

local bright = {
	black   = 8,
	red     = 9,
	green   = 10,
	yellow  = 11,
	blue	= 12,
	magenta = 13,
	cyan    = 14,
	white   = 15,
}

local normal = {
	black   = 0,
	red     = 1,
	green   = 2,
	yellow  = 3,
	blue	= 4,
	magenta = 5,
	cyan    = 6,
	white   = 7,
}

lexers.STYLE_DEFAULT ='back:black,fore:'..bright.white..''
lexers.STYLE_NOTHING = 'back:'..normal.black..''
lexers.STYLE_CLASS = 'fore:'..normal.yellow..',bold'
lexers.STYLE_COMMENT = 'fore:'..bright.black..',bold'
lexers.STYLE_CONSTANT = 'fore:'..bright.cyan..',bold'
lexers.STYLE_DEFINITION = 'fore:'..bright.blue..',bold'
lexers.STYLE_ERROR = 'fore:'..bright.red..',italics'
lexers.STYLE_FUNCTION = 'fore:'..bright.green..',bold'
lexers.STYLE_KEYWORD = 'fore:'..bright.yellow..',bold'
lexers.STYLE_LABEL = 'fore:'..bright.green..',bold'
lexers.STYLE_NUMBER = 'fore:'..bright.red..',bold'
lexers.STYLE_OPERATOR = 'fore:'..bright.cyan..',bold'
lexers.STYLE_REGEX = 'fore:'..bright.green..',bold'
lexers.STYLE_STRING = 'fore:'..normal.green..',bold'
lexers.STYLE_PREPROCESSOR = 'fore:'..bright.magenta..',bold'
lexers.STYLE_TAG = 'fore:'..bright.red..',bold'
lexers.STYLE_TYPE = 'fore:'..bright.green..',bold'
lexers.STYLE_VARIABLE = 'fore:'..bright.magenta..',bold'
lexers.STYLE_WHITESPACE = ''
lexers.STYLE_EMBEDDED = 'back:'..bright.blue..',bold'
lexers.STYLE_IDENTIFIER = 'fore:'..bright.white..''

lexers.STYLE_LINENUMBER = 'fore:'..bright.yellow..''
lexers.STYLE_LINENUMBER_CURSOR = lexers.STYLE_LINENUMBER
lexers.STYLE_CURSOR = 'reverse'
lexers.STYLE_CURSOR_PRIMARY = lexers.STYLE_CURSOR..',fore:'..bright.white..''
lexers.STYLE_CURSOR_LINE = 'underlined'
lexers.STYLE_COLOR_COLUMN = 'back:'..normal.red..''
lexers.STYLE_SELECTION = 'back:'..bright.white..''
lexers.STYLE_STATUS = 'reverse'
lexers.STYLE_STATUS_FOCUSED = 'reverse,bold'
lexers.STYLE_SEPARATOR = lexers.STYLE_DEFAULT
lexers.STYLE_INFO = 'fore:default,back:default,bold'
lexers.STYLE_EOF = ''
