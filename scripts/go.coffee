module.exports = (robot) ->

  robot.respond /en marche/i, (res) ->
	listRoom = [
		'general',
		'ah16',
		'ah17',
		'ai09',
		'ai16',
		'ai18',
		'ai19'
		'annonces',
		'bordel',
		'bouffe',
		'connect4',
		'cordialement',
		'gopic',
		'gopreau',
		'hmmm',
		'nsfw',
		'partyfiesta',
		'politique',
		'saucisse',
		'security',
		'sushi',
		'tacos',
		'tsh',
		'tshdebogosses',
		'tshdemerde',
		'veilletechno',
		'videogames'
	]
	 for (i = 0, len = listRoom.length; i < len; i++) {
    		room = listRoom[i];
    		robot.emit 'slack.attachment',
		message: msg.message
		content:
		  # see https://api.slack.com/docs/attachments 
		  text: "Test"
		  fallback: "Test"
		  fields: [{
		    title: "Test"
		    value: "Test"
		  }]
		  channel: room # optional, defaults to message.room 
		  #username: "foobot" # optional, defaults to robot.name 
		  #icon_url: "..." # optional 
		  #icon_emoji: "..." # optional
  	}
	 
