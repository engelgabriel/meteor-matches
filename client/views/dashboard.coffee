Template.dashboard.helpers
	last_matches: ->
		return Matches.find { 'teams.players': Meteor.userId() }, { limit: 5, sort: { createdAt: -1 } }

	last_tourneys: ->
		return TournamentRanks.find { userId: Meteor.userId() },
			{ limit: 5, sort: { createdAt: -1 } }

	getTourneyName: (tourneyId) ->
		tourney = Tournaments.findOne tourneyId
		return tourney?.name
