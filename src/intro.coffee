###!
<%= title %> v<%= version %>
Docs & License: <%= homepage %>
(c) <%= copyright %>
###

`(function(factory) {
	if (typeof define === 'function' && define.amd) {
		define([ 'jquery', 'moment' ], factory);
	}
	else {
		factory(jQuery, moment);
	}
})(function($, moment) {`

FC = $.fullCalendar
FC.schedulerVersion = "<%= version %>"

if FC.internalApiVersion != 2
	FC.warn(
		'v' + FC.schedulerVersion + ' of FullCalendar Scheduler ' +
		'is incompatible with v' + FC.version + ' of the core.\n' +
		'Please see http://fullcalendar.io/support/ for more information.'
	)
	return # stop execution. don't load the plugin

Calendar = FC.Calendar
Class = FC.Class
View = FC.View
Grid = FC.Grid
intersectRanges = FC.intersectRanges
debounce = FC.debounce
isInt = FC.isInt
getScrollbarWidths = FC.getScrollbarWidths
DragListener = FC.DragListener
htmlEscape = FC.htmlEscape
computeIntervalUnit = FC.computeIntervalUnit
proxy = FC.proxy
capitaliseFirstLetter = FC.capitaliseFirstLetter
applyAll = FC.applyAll
Emitter = FC.Emitter
durationHasTime = FC.durationHasTime
divideRangeByDuration = FC.divideRangeByDuration
divideDurationByDuration = FC.divideDurationByDuration
multiplyDuration = FC.multiplyDuration
parseFieldSpecs = FC.parseFieldSpecs
compareByFieldSpecs = FC.compareByFieldSpecs
flexibleCompare = FC.flexibleCompare
intersectRects = FC.intersectRects
CoordCache = FC.CoordCache
