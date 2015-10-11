BlazeLayout.setRoot('body')

FlowRouter.route '/',
	name: 'dashboard'
	action: (params) ->
		BlazeLayout.render "mainLayout", {main: "dashboard"}


FlowRouter.route '/matches',
	name: 'matches'
	action: (params) ->
		BlazeLayout.render "mainLayout", {main: "matches"}


FlowRouter.route '/tourney',
	name: 'tourney_list'
	action: (params) ->
		BlazeLayout.render "mainLayout", {main: "tourney_list"}


FlowRouter.route '/tourney/:_id',
	name: 'tourney'
	action: (params) ->
		BlazeLayout.render "mainLayout", {main: "tourney"}