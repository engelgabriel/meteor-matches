Template.tourney.events
	'click .fab.button': ->
		FlowRouter.go 'tourney_match', _id: FlowRouter.getParam('_id')

Template.tourney.onRendered ->
	$('.tourney.menu .item').tab()

Template.tourney.helpers
	tournamentName: ->
		tournamentId = FlowRouter.getParam('_id')

		return Tournaments.findOne(tournamentId)?.name

	ranks: ->
		tournamentId = FlowRouter.getParam('_id')

		return TournamentRanks.find tournamentId: tournamentId

	getUserNameById: (userId) ->
		user = Meteor.users.findOne(userId)
		if not user?
			return

		return user.name or user.profile?.name

	matches: ->
		tournamentId = FlowRouter.getParam('_id')

		return Matches.find tournamentId: tournamentId
